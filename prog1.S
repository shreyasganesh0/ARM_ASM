.syntax unified
.cpu cortex-m3
.thumb

.word 0x20000400
.word 0x080000ed
.space 0xe4

ldr r0, =0x00000004
ldr r1, =0x40021018
str r0, [r1]

