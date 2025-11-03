#include <stdio.h>
#include <x86intrin.h>
#include <stdint.h>

int main() {
    static uint8_t buf[8192];
    volatile uint8_t *addr = &buf[0];
    unsigned int junk=0;
    uint64_t t1,t2;
    // bring into cache
    junk = *addr;
    t1 = __rdtscp(&junk);
    junk = *addr;
    t2 = __rdtscp(&junk);
    printf("cached access time: %llu\n", (unsigned long long)(t2 - t1));

    // clflush and measure miss
    _mm_clflush((void*)addr);
    t1 = __rdtscp(&junk);
    junk = *addr;
    t2 = __rdtscp(&junk);
    printf("after clflush access time: %llu\n", (unsigned long long)(t2 - t1));
    // after clflush
    _mm_clflush((void*)addr);
    unsigned int junk1=0;
    uint64_t t3 = __rdtscp(&junk1);
    junk = *addr;
    uint64_t t4 = __rdtscp(&junk1);
    printf("clflush -> access = %llu\n", (unsigned long long)(t4- t3));
    return 0;
}
