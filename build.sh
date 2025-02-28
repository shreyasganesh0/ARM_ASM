#!/bin/zsh

arm-none-eabi-as -o prog1.o prog1.S

arm-none-eabi-ld -o prog1.elf prog1.o -Ttext=0x80000000
