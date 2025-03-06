#!/bin/zsh

arm-none-eabi-as -g -o prog1.o prog1.S 

arm-none-eabi-ld -o prog1.elf prog1.o -Ttext=0x8000000 
