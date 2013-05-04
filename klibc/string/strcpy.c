/*
 * strcpy.c
 *
 * strcpy()
 */

#include <string.h>

/*@
	requires \exists integer i; 0 <= i <= 20000 && Length_of_str_is(src, i);
	requires \valid(dst+(0..Length(src)));
	requires \separated(src+(0..Length(src)), dst+(0..Length(src)));
	assigns dst[0..Length(src)];
	ensures \exists integer i; 0 <= i && Length_of_str_is(src,i) && Length_of_str_is(dst,i);
	ensures \forall integer i; 0 <= i <= Length(src) ==> dst[i] == src[i];
	ensures \result == dst;
@*/
char *strcpy(char *dst, const char *src)
{
	char *q = dst;
	const char *p = src;
	char ch;


  //do {

 	/*@
		loop invariant \base_addr(q) == \base_addr(dst);
		loop invariant \base_addr(p) == \base_addr(src);
		loop invariant dst <= q <= dst + Length(src);
		loop invariant src <= p <= src + Length(src);
		loop invariant q == dst + (p - src);
		loop invariant p == src + (q - dst);
		loop invariant \forall integer i; 0 <= i < (p - src) ==> dst[i] == src[i];
		loop invariant \forall integer i; 0 <= i < (p - src) ==> src[i] != 0;
		loop assigns ch, p, q, dst[0..(p-src)-1];
		loop variant Length(src) - (p - src);

	@*/
	while(ch)
		*q++ = ch = *p++;


  //} while (ch);

	return dst;
}
