/*
 * strncasecmp.c
 */

#include <string.h>
#include <ctype.h>

/*@
	requires n > 0;
	requires \valid(s1+(0..n-1));
  	requires \valid(s2+(0..n-1));
  	requires \separated(s1+(0..n-1), s2+(0..n-1));
  	requires \exists integer i; Length_of_str_is(s1,i);
  	requires \exists integer i; Length_of_str_is(s2,i);
	assigns \nothing;
  
	behavior eq:
		assumes \forall integer i; 0 <= i < n ==> ToUpper((unsigned char)(s1[i])) == ToUpper((unsigned char)(s2[i]));
    	ensures \result == 0;

  	behavior not_eq:
  		assumes \exists integer i; 0 <= i < n && ToUpper((unsigned char)(s1[i])) != ToUpper((unsigned char)(s2[i]));
  		ensures \result != 0;

  	complete behaviors;
  	disjoint behaviors;
@*/
int strncasecmp(const char *s1, const char *s2, size_t n)
{
	const unsigned char *c1 = (const unsigned char *)s1;
	const unsigned char *c2 = (const unsigned char *)s2;
	unsigned char ch;
	int d = 0;


  /*@
      loop invariant 0 <= n <= \at(n, Pre);
      loop invariant \forall integer i; 0 <= i < (\at(n,Pre) - n) ==> ToUpper((unsigned char)(s1[i])) == ToUpper((unsigned char)(s2[i]));
      loop invariant (unsigned char*)s1 <= c1 <= (unsigned char*)s1+\at(n, Pre);
      loop invariant (unsigned char*)s2 <= c2 <= (unsigned char*)s2+\at(n, Pre);
      loop invariant c1 == (unsigned char*)s1 + (\at(n, Pre) - n);
      loop invariant c2 == (unsigned char*)s2 + (\at(n, Pre) - n);
      loop invariant d == 0;
      loop assigns n, c1, c2, ch, d;
      loop variant n;
    @*/
	while (n/*n--*/) {
		/* toupper() expects an unsigned char (implicitly cast to int)
		   as input, and returns an int, which is exactly what we want. */
		d = toupper(ch = *c1++) - toupper(*c2++);
		if (d || !ch)
			break;

		n--; // inserted code
	}

	return d;
}
