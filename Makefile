# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: darodrig <darodrig@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/19 10:30:55 by darodrig          #+#    #+#              #
#    Updated: 2020/02/20 14:53:06 by darodrig         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC = ft_strlen.s ft_strcmp.s ft_strcpy.s ft_write.s ft_read.s ft_strdup.s
OBJ = $(SRC:.s=.o)
NAME = libasm.a
EXEC = test

all: $(NAME)

$(NAME): $(SRC)
	nasm -f macho64 ft_strlen.s
	nasm -f macho64 ft_strcmp.s
	nasm -f macho64 ft_strcpy.s
	nasm -f macho64 ft_write.s
	nasm -f macho64 ft_read.s
	nasm -f macho64 ft_strdup.s
	ar rcs lasm $(OBJ)
	gcc -Wall -Wextra -Werror main.c -L. lasm -o $(EXEC)


clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(EXEC)
	rm -f lasm

re:	fclean all

main:
	make all
	./test

push:
	git add $(SRC) Makefile main.c libasm.h
	git commit -m "$(SRC)"
	git push origin master