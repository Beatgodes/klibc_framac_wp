/*
 * strcat.c
 */

#include <string.h>

/*@
	requires \exists integer i; Length_of_str_is(dst, i);
	requires \exists integer i; Length_of_str_is(src, i);
	requires \separated(dst+(0..Length(dst)), src+(0..Length(src)));
	requires \valid(dst+(0..(Length(dst)+Length(src)-1)));
	assigns dst[Length(dst)..(Length(dst) + Length(src))];
	ensures \forall integer i; 0 <= i <= Length(src) ==> dst[Length{Old}(dst)+i] == src[i];
	ensures \result == dst;
@*/
char *strcat(char *dst, const char *src)
{
	strcpy(strchr(dst, '\0'), src);
	return dst;
}
