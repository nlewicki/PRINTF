# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nlewicki <nlewicki@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/03/22 10:50:59 by nlewicki          #+#    #+#              #
#    Updated: 2024/03/26 10:39:42 by nlewicki         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FILES = ft_printf.c \
		ft_putchar_fd.c \
		ft_putstr_fd.c \
		ft_putnbr_fd.c \
		ft_putnbr_base.c \
		get_error.c \

CC = cc
CFLAGS = -Wall -Wextra -Werror
NAME = libftprintf.a
CFILES = $(FILES)
OFILES = $(CFILES:.c=.o)

$(NAME): $(OFILES)
	$(AR) rcs $(NAME) $(OFILES)

%.o: %.c
	$(CC) -c $(CFLAGS) $?

all: $(NAME)

clean:
	rm -f $(OFILES)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
