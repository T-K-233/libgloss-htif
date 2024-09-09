#ifndef _CHIPYARD_ASM_H
#define _CHIPYARD_ASM_H

#if __riscv_xlen == 64
#define LREG ld
#define SREG sd
#define REGBYTES 8
#else
#define LREG lw
#define SREG sw
#define REGBYTES 4
#endif

#endif /* _CHIPYARD_ASM_H */
