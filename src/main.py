from src.parser import load_functions, write_functions
from src.detector import annotate_transient_instructions, get_windows_text_report
from src.variant_generator2 import generate_variants_for_results

'''
def main():
    # File di input e output (hardcoded per ora)
    input_file = "Ctests/test7.s"
    output_file = "Ctests/out7.s"
    # Legge le funzioni dal file assembly
    funcs = load_functions(input_file)
    # Scrive le funzioni nel file assembly di output
    write_functions(funcs, output_file)
    print(f"File scritto: {output_file}")

def main():

    funcs = load_functions("Ctests/SpectrePoC.s")
    detections = annotate_transient_instructions(funcs)

    for func in funcs:
        for instr in func.instructions:
            if instr.is_transient_window:
                print(f" Func '{func.name}': {instr.to_asm()} --> score={instr.transient_score}")
'''

def main():
    funcs = load_functions('Ctests/spectre.s')
    results = annotate_transient_instructions(funcs, window_size=7)

    #for r in results:
    #    print(r)

    #Per debug visuale di una funzione specifica:
    #print(get_windows_text_report(funcs[0]))

    out = generate_variants_for_results(funcs, results, )
    res = write_functions(out, 'Ctests/outLoad.s')

if __name__ == "__main__":
    main()
