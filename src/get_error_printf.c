/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_error_printf.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nicolewicki <nicolewicki@student.42.fr>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/25 15:29:06 by nlewicki          #+#    #+#             */
/*   Updated: 2024/09/25 12:46:37 by nicolewicki      ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/ft_printf.h"

int	get_error_printf(int status, int intial)
{
	static int	error;

	if (intial == 1)
		error = 0;
	if (error == -1)
		return (-1);
	else if (status < 0)
		error = -1;
	return (error);
}
