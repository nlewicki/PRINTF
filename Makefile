# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nicolewicki <nicolewicki@student.42.fr>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/03/22 10:50:59 by nlewicki          #+#    #+#              #
#    Updated: 2024/09/25 12:51:14 by nicolewicki      ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FILES = src/ft_printf.c \
		src/pf_putchar_fd.c \
		src/pf_putstr_fd.c \
		src/pf_putnbr_fd.c \
		src/pf_putnbr_base.c \
		src/get_error_printf.c \

CC = cc
CFLAGS = -Wall -Wextra -Werror

NAME = libftprintf.a
CFILES = $(FILES)
OBJ_DIR = obj
OFILES = $(patsubst src/%.c, $(OBJ_DIR)/%.o, $(FILES))

$(NAME): $(OFILES)
	@$(AR) rcs $(NAME) $(OFILES)

$(OBJ_DIR)/%.o: src/%.c | $(OBJ_DIR)
	@$(CC) -c $(CFLAGS) $< -o $@

$(OBJ_DIR):
	@mkdir -p $(OBJ_DIR)

all: $(NAME)

clean:
	rm -f $(OFILES)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
