.syntax unified
.cpu cortex-m3
.thumb

.word 0x20000400
.word 0x080000ed
.space 0xe4

ldr r0, =0x00000004
ldr r1, =0x40021018  # RCC_APB2ENR register addr
str r0, [r1]         # this is used to open the GPIOA port

ldr r0, =0x44444442
ldr r1, =0x40010804  # GPIOA_RCH register addr
str r0, [r1]         # Used to set PA8 pin to General Purpose pull-push mode for LED

ldr r0, =0x100
ldr r1, =0x4001080C  # set the GPIOA_ORD register to 1 on the 8th bit 
str r0, [r1]

b.
