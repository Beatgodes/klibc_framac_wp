/*
 * strcpy.c
 *
 * strcpy()
 */

#include <string.h>

/*@
	requires \valid(dst);
	requires \valid(src);
	requires \separated(src, dst);
	requires \exists integer i; i <= 2000 && Length_of_str_is(src, i);
	requires \valid(dst+(0..Length(src)));
	requires \separated(src+(0..Length(src)), dst+(0..Length(src)));
	assigns dst[0..Length(src)];
	ensures \exists integer i; Length_of_str_is(src,i) && Length_of_str_is(dst,i);
	ensures \forall integer i; 0 <= i <= Length(src) ==> dst[i] == src[i];
	ensures \result == dst;
	ensures \base_addr(\result) == \base_addr(dst);
@*/
char *strcpy(char *dst, const char *src)
{
	char *q = dst;
	const char *p = src;
	char ch;
	//@ ghost int k = 0;

 	/*@
 		loop invariant q != dst ==> ch != 0;
		loop invariant p != src ==> ch != 0;
		loop invariant k != 0 ==> ch != 0;
 		loop invariant 0 <= k <= Length(src);
 		loop invariant k == \at(p, Here) - src;
		loop invariant \base_addr(q) == \base_addr(dst);
		loop invariant \base_addr(p) == \base_addr(src);
		loop invariant dst <= \at(q, Here) <= dst + Length(src);
		loop invariant src <= \at(p, Here) <= src + Length(src);
		loop invariant \at(q, Here) == dst + k;
		loop invariant \at(p, Here) == src + k;
		loop invariant \forall integer i; 0 <= i < k ==> dst[i] == src[i];
		loop invariant \forall integer i; 0 <= i < k ==> src[i] != 0;
		loop assigns ch, p, q, dst[0..k-1], k;
		loop variant Length(src) - k;

	@*/
	while(1){
		*q++ = ch = *p++;
		if(!ch) break;

		//@ ghost k++;
	}


  /*do {
	//while(ch)
		*q++ = ch = *p++;
		//@ ghost k++;

  } while (ch);
*/
	return dst;
}
