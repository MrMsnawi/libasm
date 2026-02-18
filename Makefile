NAME = libasm.a

SRC_ASM = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s

OBJ_ASM = $(SRC_ASM:.s=.o)

NASM = nasm
NASM_FLAGS = -f elf64

CC = cc
CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

%.o: %.s
	$(NASM) $(NASM_FLAGS) $< -o $@

$(NAME): $(OBJ_ASM)
	ar rcs $(NAME) $(OBJ_ASM)

main: $(NAME) main.c
	$(CC) $(CFLAGS) main.c -L. -lasm -o main

clean:
	rm -f $(OBJ_ASM)

fclean: clean
	rm -f $(NAME) main

re: fclean all

.PHONY: all clean fclean re