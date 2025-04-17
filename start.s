        .data
strE:   .asciz "Enter a value: "
strF:   .asciz "%d"
strR1:  .asciz "R1 contains %d\n"
strR2:  .asciz "R2 contains %d\n"
        .align 2
n:      .word 0
m:      .word 0

        .text 
        .globl main
main:   stmfd   sp!, {lr}

        ldr     r0, =strE
        bl      printf

        ldr     r0, =strF
        ldr     r1, =n
        bl      scanf

        ldr     r0, =strE
        bl      printf

        ldr     r0, =strF
        ldr     r1, =m
        bl      scanf

        ldr     r4, =n
        ldr     r4, [r4]

        ldr     r5, =m
        ldr     r5, [r5]




        ldr     r0, =strR1
        mov     r1, r4
        bl      printf

        ldr     r0, =strR2
        mov     r1, r5
        bl      printf


        ldmfd   sp!, {lr}
        mov     r0, #0
        mov     pc, lr
        .end
 