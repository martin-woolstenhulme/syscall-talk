# Introduction

System calls (syscall) are fundamental to the operating system. We explore how syscall works in linux with a few sample programs and commands.

# Step-by-Step
| # | Terminal Command | What it's doing |
| - | ---------------- | --------------- |
| 0 | `make build` | builds a docker image for this demonstration |
| 1 | `make run`  | starts a docker container |
| 2 | `make a-app` | builds an assembly application name *test* in the container |
| 3 | `./test` | runs the assembly application |
| 4 | `strace ./test` | traces the system call made by the assembly application |
| 5 | `make c-app` | builds a C application also named *test* |
| 6 | `./test` | run the C application |
| 7 | `ltrace ./test` | trace library calls made by the C application |
| 8 | `ltrace -S ./test` | trace library calls and system calls made by the C application |

Please take time to view the source code of each `test.*` file to see how things work.

Things to consider:

- What is User space? What is Kernel space?
- What is the API? What is ABI?
- How does understanding syscalls help an application developer?
- What is the call stack for your favorite language to open a file?

# Resources

* https://0xax.gitbooks.io/linux-insides/content/SysCall/linux-syscall-1.html
* http://man7.org/linux/man-pages/man2/syscalls.2.html
* https://github.com/torvalds/linux/blob/16f73eb02d7e1765ccab3d2018e0bd98eb93d973/fs/read_write.c
* https://github.com/torvalds/linux/blob/16f73eb02d7e1765ccab3d2018e0bd98eb93d973/arch/x86/entry/syscalls/syscall_64.tbl
* https://hub.docker.com/_/gcc/
* https://github.com/martin-woolstenhulme/syscall-talk
* https://en.wikipedia.org/wiki/X86_calling_conventions#x86-64_calling_conventions