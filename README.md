# Learning OS Development

My goal is to get a better understanding of computer and operating system architectures. 

## Ressources
- [os-dev.pdf](https://www.cs.bham.ac.uk/~exr/lectures/opsys/10_11/lectures/os-dev.pdf)

### Current Chapter
- 3.4.5

## Setup

- Ubuntu 20.10

``` bash
sudo apt install qemu-system-x86 nasm
nasm <FILE>.asm -f bin -o <FILE>.bin
qemu-system-x86_64 -drive format=raw,file=<FILE>.bin
```
