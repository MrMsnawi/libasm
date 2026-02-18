# libasm

A library of standard C functions re-implemented in x86-64 assembly (NASM).

## Functions

| Function | Prototype | Description |
|---|---|---|
| `ft_strlen` | `size_t ft_strlen(const char *s)` | Returns the length of a string |
| `ft_strcpy` | `char *ft_strcpy(char *dst, const char *src)` | Copies a string to a destination buffer |
| `ft_strcmp` | `int ft_strcmp(const char *s1, const char *s2)` | Compares two strings lexicographically |
| `ft_write` | `ssize_t ft_write(int fd, const void *buf, size_t count)` | Writes to a file descriptor (sets `errno` on error) |
| `ft_read` | `ssize_t ft_read(int fd, void *buf, size_t count)` | Reads from a file descriptor (sets `errno` on error) |
| `ft_strdup` | `char *ft_strdup(const char *s)` | Allocates and returns a duplicate of a string |

## Build

```sh
make        # builds libasm.a
make clean  # removes object files
make fclean # removes object files and library
make re     # full rebuild
```

## Usage

Include the header and link against the library:

```c
#include "libasm.h"
```

```sh
cc main.c -L. -lasm -o main
```

## Requirements

- **NASM** (Netwide Assembler)
- **GCC** or compatible C compiler
- Linux x86-64
