#include <stdio.h>

int ft_strlen(char *str);

int main()
{
	char str[] = "Hello";
	int len = ft_strlen(str);
	printf("len is %d\n", len);
}
