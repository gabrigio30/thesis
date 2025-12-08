# parser.py
# -------------------------
# Modulo minimale per leggere e scrivere file assembly (sintassi AT&T, x86-64).
# - load_functions(filename) -> lista di oggetti Function
# - write_functions(functions, output_file) -> ricostruisce un file '.s'
#
# NOTE:
# - Questo parser è volutamente semplice: lavora su file prodotti da `gcc -S`.
#
# Gabriele Giordanelli: prototipo per tesi
# -------------------------

import re
from typing import List, Optional

# -------------------------
# Classi dati principali
# -------------------------

class Instruction:
    """
    Rappresenta una singola riga istruzione del file .s.

    ATTRIBUTI (tutti in MAIUSCOLO come richiesto):
    - raw_line   : la riga originale così com'era nel file (inclusi spazi iniziali/commento)
    - mnemonic   : la mnemonica (es. 'movq', 'addq') - None per linee non-istruzione
    - operands   : lista di operandi (es. ['%rdi', '%rax'])
    - comment    : testo del commento a destra (se presente, senza '#')
    - directive  : True se la riga è una direttiva assembler (es. .globl, .section)
    """

    def __init__(self, raw_line: str, mnemonic: Optional[str] = None,
                 operands: Optional[List[str]] = None, comment: Optional[str] = None):
        self.raw_line = raw_line.rstrip('\n')
        self.mnemonic = mnemonic
        self.operands = operands or []
        self.comment = comment
        self.is_transient_window = False
        self.transient_score = 0.0
        # Consideriamo direttive le linee che cominciano con '.'
        self.directive = self.raw_line.strip().startswith('.')

    def to_asm(self) -> str:
        """
        Ricostruisce la riga assembly a partire dalla rappresentazione interna.
        - Per le direttive restituisce RAW_LINE (preserva esattamente la direttiva).
        - Per le istruzioni costruisce una riga standard (con tab iniziale).
        """
        if self.directive or self.mnemonic is None:
            # Manteniamo la direttiva così com'era (es: ".globl main")
            return self.raw_line
        # Formattazione standard per istruzioni: tab + mnemonica + tab + operandi separati da ", "
        asm_line = "\t" + self.mnemonic
        if self.operands:
            asm_line += "\t" + ", ".join(self.operands)
        if self.comment:
            asm_line += "    # " + self.comment.strip()
        return asm_line

class Function:
    """
    Rappresenta una funzione (o top-level label) nel file .s.
    - NAME: nome della label (es. 'main')
    - DIRECTIVES: direttive viste immediatamente prima o dentro la funzione (.globl, .type, .cfi_*)
    - INSTRUCTIONS: lista ordinata di Instruction che costituiscono la funzione
    """
    def __init__(self, name: str):
        self.name = name
        self.directives: List[str] = []
        self.instructions: List[Instruction] = []

    def add_instruction(self, instr: Instruction):
        self.instructions.append(instr)


def _split_operands(operands_raw: str):
    """
    Splitta gli operandi tenendo conto delle parentesi:
    - non spezza sulle virgole dentro (...).
    Esempio:
      "%rax, (%rbx,%rcx), $1" -> ["%rax", "(%rbx,%rcx)", "$1"]
    """
    operands = []
    current = []
    depth = 0  # profondità di parentesi

    for ch in operands_raw:
        if ch == '(':
            depth += 1
            current.append(ch)
        elif ch == ')':
            depth = max(0, depth - 1)
            current.append(ch)
        elif ch == ',' and depth == 0:
            # fine operando
            op = ''.join(current).strip()
            if op:
                operands.append(op)
            current = []
        else:
            current.append(ch)

    # ultimo operando
    op = ''.join(current).strip()
    if op:
        operands.append(op)

    return operands



# -------------------------
# Parsing / I/O
# -------------------------

def load_functions(filename: str) -> List[Function]:
    """
    Legge un file .s (AT&T syntax) e restituisce una lista di Function.
    - Mantiene tutte le direttive non-glob/importanti nel flusso originale.
    - Salva solo .globl e .type nella lista directives della funzione.
    """
    functions: List[Function] = []
    current_function: Optional[Function] = None
    # direttive visitate prima della label iniziale (o tra due label)
    pending_directives: List[str] = []

    # -------------------------
    # Regex usate e spiegazione
    # -------------------------
    #
    # LABEL_RE: cattura label che cominciano con lettera/underscore e terminano con ':'
    # - r'^([a-zA-Z_][\w]*):'
    #   ^           -> inizio della stringa (dopo strip)
    #   ([a-zA-Z_][\w]*) -> gruppo che cattura nomi tipo: main, func_name, _start
    #       [a-zA-Z_]   -> primo carattere deve essere lettera o underscore (no dot)
    #       [\w]*       -> seguito da lettere/numeri/underscore
    #   :           -> due punti che indicano la fine della label
    #
    # NOTA: con questa scelta NON consideriamo label che iniziano con '.' (es. '.LBB0:')
    # le label che iniziano con '.' sono di solito label interne/di supporto generate dal compilatore,
    # non vogliamo trattarle come "inizio di funzione". Le funzioni compilate da gcc tipicamente hanno
    # nomi senza prefisso '.' (es. main:).
    label_re = re.compile(r'^([a-zA-Z_][\w]*):')

    # INSTR_RE: cattura una riga istruzione con eventuale commento finale (usando '#')
    # - r'^\s*([a-zA-Z][\w.]*)\s*(.*?)(?:\s+#\s*(.*))?$'
    #   ^\s*            -> eventuali spazi iniziali (tab o spazi)
    #   ([a-zA-Z][\w.]*)-> MNEMONIC: inizia con lettera, può contenere lettere, numeri, underscore, o punti
    #                      (i punti sono accettati perché alcune mnemoniche/forme hanno suffissi,
    #                       ma tipicamente mnemoniche sono tipo movq, addl, jne, ecc.)
    #   \s*             -> eventuali spazi tra mnemonica e operandi
    #   (.*?)           -> gruppo (non greedy) che prende la parte degli operandi (se presenti)
    #   (?:\s+#\s*(.*))?-> gruppo opzionale non-capturing per il commento a destra:
    #                      " # commento" -> catturiamo il testo del commento nel gruppo 3
    #
    # Esempio riga: "\taddq %rsi, %rdi    # somma"
    #   group(1) => "addq"
    #   group(2) => "%rsi, %rdi"
    #   group(3) => "somma"
    instr_re = re.compile(r'^\s*([a-zA-Z][\w.]*)\s*(.*?)(?:\s+#\s*(.*))?$')

    with open(filename, 'r') as file:
        for line in file:
            # Manteniamo la linea originale in raw_line, ma per alcune decisioni usiamo stripped_line
            raw_line = line.rstrip('\n')
            stripped_line = raw_line.strip()

            # Salta linee vuote (evitiamo di creare istruzioni vuote)
            if stripped_line == "":
                continue

            # -------------------------
            # LABEL: es. "main:" o "my_func:"
            # -------------------------
            label_match = label_re.match(stripped_line)
            if label_match:
                label_name = label_match.group(1)
                # Se siamo già dentro una funzione e la label sembra essere una label
                # interna generata dal compilatore (es. LBB1_2, Ltmp0, .L123),
                # NON apriamo una nuova Function: la trattiamo come una semplice
                # label/istruzione interna e la aggiungiamo alla funzione corrente.
                #
                # Criteri usati (conservativi):
                #  - label che inizia con 'L' (es. LBB1_2, Ltmp0)
                #  - label che inizia con '.L' (es. .LBB0)
                # Questi pattern sono tipici di label interne/di basic-block.
                if current_function is not None and (
                        label_name.startswith('L') or label_name.startswith('.L') or label_name.startswith('Ltmp')):
                    # preserviamo la riga esattamente com'era
                    current_function.add_instruction(Instruction(raw_line=raw_line))
                    continue
                # Altrimenti creiamo una nuova Function con quel nome e la rendiamo corrente
                current_function = Function(label_name)
                # manteniamo l'ordine: le pending_directives vanno prima della label
                current_function.directives = pending_directives
                pending_directives = []
                functions.append(current_function)
                continue

            # -------------------------
            # DIRECTIVE: linee che iniziano con '.' (es. .globl, .type, .section)
            # -------------------------
            # NON PRENDE .globl _sum PERCHé NEL MOMENTO IN CUI IL PARSER LO PASSA
            # NON ABBIAMO UNA FUNZIONE CURRENT ESSENDO PRIMA DELLA PRIMA LABEL
            # INOLTRE TUTTE LE .globl SONO SHIFTATE DI 1 PERCHé NON CONSIDERIAMO
            # TUTTE LE RIGHE PRIMA DELLA LABEL SUCCESSIVA COME PARTE DI CURRENT FUNCTION
            if stripped_line.startswith('.'):
                # .cfi_endproc è ancora parte della funzione corrente, ma dopo di essa
                # vogliamo considerare che la funzione sia terminata
                if stripped_line.startswith('.cfi_endproc'):
                    # Se abbiamo una current function .cfi_endproc ne fa parte
                    if current_function is not None:
                        current_function.add_instruction(Instruction(raw_line=raw_line))
                    # A questo punto chiudiamo la current function
                    current_function = None
                    continue
                # Se non abbiamo ancora una label corrente, salviamo la direttiva come pending
                if current_function is None:
                    pending_directives.append(raw_line)
                else:
                    # Direttive *dentro* la funzione (es .cfi_startproc, .cfi_* interni)
                    # le consideriamo parte della lista di istruzioni così da preservare la posizione esatta.
                    current_function.add_instruction(Instruction(raw_line=raw_line))
                continue

            # -------------------------
            # ISTRUZIONE: tentiamo di matchare con INSTR_RE
            # -------------------------
            instr_match = instr_re.match(stripped_line)
            if instr_match:
                mnemonic = instr_match.group(1)
                operands_raw = instr_match.group(2).strip()
                operands = _split_operands(operands_raw) if operands_raw else []
                comment = instr_match.group(3) if instr_match.group(3) else None
                instr = Instruction(raw_line=raw_line, mnemonic=mnemonic,
                                    operands=operands, comment=comment)
                if current_function is not None:
                    current_function.add_instruction(instr)
                else:
                    # Linea istruzione *prima* della prima label: trattata come pending directive/line
                    # (per preservare l'ordine e non perderla)
                    pending_directives.append(raw_line)
                continue

            # Commenti standalone o linee non riconosciute → preserviamo comunque
            if current_function is not None:
                current_function.add_instruction(Instruction(raw_line=raw_line))
            else:
                pending_directives.append(raw_line)

    # Se il file termina con direttive pendenti senza label finale
    # appendiamole come "sezione finale" fittizia:
    if pending_directives:
        # Creiamo una 'funzione' anonima che le contiene per riscriverle in output senza perderle
        anon = Function("__trailing_directives__")
        anon.directives = pending_directives
        functions.append(anon)

    return functions


def write_functions(functions: List[Function], output_file: str):
    """
    Scrive la lista di Function in OUTPUT_FILE in formato .s.
    - Preserva l’ordine originale delle righe e delle direttive.
    - Scrive istruzioni e label senza spostare direttive delicate (.cfi_*, .p2align).
    """
    with open(output_file, 'w') as file:

        '''
        # DECOMMENTA SOLO PER USARE GLOBAL RANDOM_SELECTOR
        # Scriviamo intestazione .data solo una volta
        file.write("\t.data\n")
        file.write("\t.globl  random_selector\n")
        file.write("random_selector:\n")
        file.write("\t.long   0\n")
        file.write("\t.text\n\n")
        '''

        for func in functions:
            # Scriviamo solo le direttive 'importanti' prima della label
            for dir in func.directives:
                file.write(dir + '\n')
                #print(dir)

            # Se si tratta della funzione anonima per le direttive finali, le scriviamo e continuiamo
            if func.name == "__trailing_directives__":
                file.write('\n')
                continue

            # Scriviamo la label della funzione
            file.write(f"{func.name}:\n")
            # Scriviamo le istruzioni così come sono
            for instr in func.instructions:
                # print(instr.to_asm())
                file.write(instr.to_asm() + '\n')

        # QUESTA CREA CASINO
        #file.write("    .comm   __spec_noise_buf,4096,4\n")