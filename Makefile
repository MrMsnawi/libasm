SRC = main.c

ASMS = ft_strlen.s

CC = cc

NASM = nasm

LIB = libasm.a

NAME = main

OBJ = $(ASMS:.s=.o) main.o

all: $(NAME)

%.o: %.s
	$(NASM) -f elf64 $< -o $@

$(NAME): $(OBJ)
	ar rcs $(LIB) $(OBJ)
	$(CC) $(OBJ) $(LIB) -o $(NAME)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(LIB) $(NAME)

re : fclean all
