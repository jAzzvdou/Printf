# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jazevedo <jazevedo@student.42.rio>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/22 15:12:38 by jazevedo          #+#    #+#              #
#    Updated: 2023/11/23 14:15:53 by jazevedo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	libftprintf.a

SRCS	=	ft_printf.c       \
		flags.c           \
		percent_printer.c \
		c_printer.c       \
		s_printer.c       \
		iduxx_printer.c   \
		help_iduxx.c	  \
		ptr_printer.c	  \
		help_functions.c  \


OBJS	=	$(SRCS:.c=.o)

CC	=	cc

CFLAGS	=	-Wall -Wextra -Werror

RM	=	rm -rf

all: $(NAME)

$(NAME): $(OBJS)
		ar rcs $(NAME) $(OBJS)

bonus: $(NAME)

.c.o:
		$(CC) $(CFLAGS) -c $<

clean:
		$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
