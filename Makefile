# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wnaiji <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/28 17:46:04 by wnaiji            #+#    #+#              #
#    Updated: 2022/12/05 18:00:01 by wnaiji           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC = ft_printf.c \
	  ft_printchar.c \
	  ft_printnbr.c \
	  ft_printstr.c \
	  ft_printnbr_base.c \
	  ft_lower_or_up_case.c \
	  ft_print_unsignednbr.c \
	  ft_printptr.c \
	  ft_strlen.c

OBJS = $(SRC:.c=.o)

NAME = libftprintf.a

CFLAGS = -Werror -Wextra -Wall

.c.o: $(SRC)
	gcc $(CFLAGS) -I . -c $< -o $(<:.c=.o)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

all: $(NAME)

clean:
	rm -rf $(OBJS)

fclean: clean
	rm -rf $(NAME)

re: fclean all
