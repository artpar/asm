rm args args.o
nasm -f elf64 args.asm -l args.lst
sudo ld -o args args.o
