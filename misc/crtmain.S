#include "asm.h"


.section .text.init
.global _start_primary
.type _start_primary, @function
_start_primary:
  /* Call main function */
  li a0, 1            /* argc = 1 */
  la a1, argv         /* argv = { "", NULL } */
  LREG a2, environ    /* envp */
  
  call main
  tail exit
  j infinite_loop


.global _start_secondary
.type _start_secondary, @function
_start_secondary:
  /* Call __main function */
  li a0, 1            /* argc = 1 */
  la a1, argv         /* argv = { "", NULL } */
  LREG a2, environ    /* envp */
  
  call __main
  tail exit
  j infinite_loop

infinite_loop:
  j infinite_loop


.section .rodata
.align 3
argv:
  .dc.a name
  .dc.a 0
name:
  .asciz "chipyard"
