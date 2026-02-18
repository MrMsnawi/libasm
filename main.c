#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <errno.h>
#include "libasm.h"

int main(void)
{
	char buf[100];

	// ft_strlen
	printf("=== ft_strlen ===\n");
	printf("ft_strlen(\"hello\")  = %zu (expected %zu)\n",
		ft_strlen("hello"), strlen("hello"));
	printf("ft_strlen(\"\")       = %zu (expected %zu)\n",
		ft_strlen(""), strlen(""));
	printf("ft_strlen(\"42 school\") = %zu (expected %zu)\n",
		ft_strlen("42 school"), strlen("42 school"));

	// ft_strcpy
	printf("\n=== ft_strcpy ===\n");
	char *ret = ft_strcpy(buf, "hello world");
	printf("ft_strcpy: \"%s\" (ret == dst: %d)\n", buf, ret == buf);
	ft_strcpy(buf, "");
	printf("ft_strcpy empty: \"%s\"\n", buf);

	// ft_strcmp
	printf("\n=== ft_strcmp ===\n");
	printf("ft_strcmp(\"abc\", \"abc\") = %d\n", ft_strcmp("abc", "abc"));
	printf("ft_strcmp(\"abc\", \"abd\") = %d\n", ft_strcmp("abc", "abd"));
	printf("ft_strcmp(\"abd\", \"abc\") = %d\n", ft_strcmp("abd", "abc"));
	printf("ft_strcmp(\"\", \"\")      = %d\n", ft_strcmp("", ""));
	printf("ft_strcmp(\"a\", \"\")     = %d\n", ft_strcmp("a", ""));
	printf("ft_strcmp(\"\", \"a\")     = %d\n", ft_strcmp("", "a"));

	// ft_write
	printf("\n=== ft_write ===\n");
	ssize_t w = ft_write(1, "hello from ft_write\n", 20);
	printf("ft_write returned: %zd\n", w);
	errno = 0;
	w = ft_write(-1, "bad", 3);
	printf("ft_write bad fd: ret=%zd, errno=%d (%s)\n", w, errno, strerror(errno));

	// ft_read
	printf("\n=== ft_read ===\n");
	errno = 0;
	ssize_t r = ft_read(-1, buf, 10);
	printf("ft_read bad fd: ret=%zd, errno=%d (%s)\n", r, errno, strerror(errno));

	// ft_strdup
	printf("\n=== ft_strdup ===\n");
	char *dup = ft_strdup("hello 42");
	printf("ft_strdup(\"hello 42\") = \"%s\"\n", dup);
	free(dup);
	dup = ft_strdup("");
	printf("ft_strdup(\"\") = \"%s\"\n", dup);
	free(dup);

	return (0);
}
