# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nlewicki <nlewicki@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/03/22 10:50:59 by nlewicki          #+#    #+#              #
#    Updated: 2024/09/25 10:48:15 by nlewicki         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FILES = ft_printf.c \
		pf_putchar_fd.c \
		pf_putstr_fd.c \
		pf_putnbr_fd.c \
		pf_putnbr_base.c \
		get_error_printf.c \

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
