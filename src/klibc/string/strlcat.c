/*
 * strlcat.c
 */

#include <string.h>
#include <klibc/compiler.h>

/*@
	requires \exists integer i, integer j; Length_of_str_is(src, i) && Length_of_str_is(dst, j) &&
				\valid(dst+(0..j+i)) && \separated(src+(0..i), dst+(0..i+j));
	requires size > 0;
	assigns dst[0..Length(src)+Length(dst)];

@*/
size_t strlcat(char *dst, const char *src, size_t size)
{
	size_t bytes = 0;
	char *q = dst;
	const char *p = src;
	char ch;

	/*@
		loop invariant dst <= q <= dst + Length(dst);
		loop invariant q == dst + bytes;
		loop invariant bytes <= size;
		loop invariant \forall integer i; 0 <= i < bytes ==> dst[i] != 0;	
		loop assigns q, bytes;
		loop variant Length(dst) - bytes;
	@*/
	while (bytes < size && *q) {
		q++;
		bytes++;
	}

	if (bytes == size)
		return (bytes + strlen(src));

	//@ ghost int i = 0;
	//@ ghost int j = 0;
	/*@
		loop invariant src <= p <= src + Length(src);
		loop invariant p == src + i;
		loop invariant j <= i;
		loop invariant \forall integer k; 0 <= k < i ==> src[k] != 0;
		loop invariant 0 <= i <= Length(src);
		loop invariant 0 <= j <= size;
		loop assigns ch, p, q, bytes, dst[0..j-1], i, j;
		loop variant Length(src) - i;
	@*/
	while ((ch = *p++)) {
		if (bytes + 1 < size){
			*q++ = ch;
			//@ ghost j++;
		}
		//@ ghost i++;
		bytes++;
	}

	*q = '\0';
	return bytes;
}


/*

	behavior shorter:
		assumes Length(dst) + Length(src) <= size;
		assumes \separated(src+(0..Length(src)),dst+(0..Length(dst)+Length(src)));
		assigns dst[Length(\old(dst))..Length(\old(dst))+Length(src)-1];
		ensures \result == Length(\old(dst)) + Length(src);

	behavior size_larger:
		assumes size >= Length(dst);
		assigns \nothing;
		ensures \result == Length(dst);

	behavior shorter_larger:
		assumes Length(dst) < size;
		assumes Length(dst) + Length(src) >= size;
		assigns dst[Length(dst)..Length(dst)+size];
		ensures \result == Length(\old(dst)) + size;

	complete behaviors;
	disjoint behaviors;

	*/
