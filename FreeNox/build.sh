nasm -f elf32 kernel.asm -o obj/kasm.o
gcc -m32 -c kernel.c -o obj/kernel.o -ffreestanding                                                 
gcc -m32 -c include/system.c -o obj/system.o -ffreestanding                                            
gcc -m32 -c include/string.c -o obj/string.o -ffreestanding                                       
gcc -m32 -c include/screen.c -o obj/screen.o -ffreestanding                                      
gcc -m32 -c include/kb.c -o obj/kb.o -ffreestanding                                                   
gcc -m32 -c include/isr.c -o obj/isr.o -ffreestanding
gcc -m32 -c include/idt.c -o obj/idt.o -ffreestanding

ld -m elf_i386 -T link.ld -o run/boot/kernel.bin obj/kernel.o obj/kasm.o  obj/system.o obj/string.o obj/screen.o obj/kb.o obj/isr.o  obj/idt.o  #Updated
qemu-system-x86_64 -kernel run/boot/kernel.bin
grub-mkrescue -o iknow.iso run/

read a


