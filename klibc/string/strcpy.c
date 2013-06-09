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
	//@ ghost int k = 0;

 	/*@
 		loop invariant 0 <= k <= Length(src);
 		loop invariant k == p - src;
		loop invariant \base_addr(q) == \base_addr(dst);
		loop invariant \base_addr(p) == \base_addr(src);
		loop invariant dst <= q <= dst + Length(src);
		loop invariant src <= p <= src + Length(src);
		loop invariant q == dst + k;
		loop invariant p == src + k;
		loop invariant \forall integer i; 0 <= i < k ==> dst[i] == src[i];
		loop invariant \forall integer i; 0 <= i < k ==> src[i] != 0;
		loop assigns ch, p, q, k, dst[0..k-1];
		loop variant Length(src) - k;

	@*/
  do {


	//while(ch)
		*q++ = ch = *p++;
	//ghost k++;

  } while (ch);

	return dst;
}
