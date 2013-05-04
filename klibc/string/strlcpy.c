/*
 * strlcpy.c
 */

#include <string.h>
#include <klibc/compiler.h>



/*@
	requires size > 0;
	requires \exists integer i; size <= i && Length_of_str_is(src, i);
	requires \separated(src+(0..Length(src)),dst+(0..size-1));
	requires \valid(dst+(0..size-1));
	assigns dst[0..size-1];

	behavior src_smaller:
		assumes Length(src) <= size;
		ensures \forall integer i; 0 <= i < Length(src) ==> dst[i] == src[i];
		ensures \result == Length(src);


	behavior src_larger:
		assumes Length(src) > size;
		ensures \forall integer i; 0 <= i < size ==> dst[i] == src[i];
		ensures \result == Length(src);

	complete behaviors;
	disjoint behaviors;	

@*/
/*size_t*/ int strlcpy(char *dst, const char *src, /*size_t*/ int size)
{
	size_t bytes = 0;
	char *q = dst;
	const char *p = src;
	char ch;

	/*@
		loop invariant 0 <= (p-src) <= Length(src);
		loop invariant 0 <= (q-dst) <= size;
		loop invariant p == src+bytes;
		loop invariant bytes + 1 < size ==> q == dst+bytes;
     	loop invariant dst <= q <= dst+\at(size,Pre);
     	loop invariant src <= p <= src+Length(src);
     	loop invariant bytes + 1 < size ==> \forall integer i; 0 <= i < bytes ==> dst[i] == src[i];
		loop assigns ch, bytes, q, p, dst[0..size-1];
		loop variant (Length(src) - bytes);
	@*/
	while ((ch = *p++)) {
		if (bytes + 1 < size)
			*q++ = ch;

		bytes++;
	}

	/* If size == 0 there is no space for a final null... */
	if (size)
		*q = '\0';

	return bytes;
}
