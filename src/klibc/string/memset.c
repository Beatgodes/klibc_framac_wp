/*
 * memset.c
 */

#include <string.h>
#include <stdint.h>

void *memset(void* dst, int c, size_t n)
{
	char *q = dst;

/*
#if defined(__i386__)
	size_t nl = n >> 2;
	asm volatile ("cld ; rep ; stosl ; movl %3,%0 ; rep ; stosb"
		      : "+c" (nl), "+D" (q)
		      : "a" ((unsigned char)c * 0x01010101U), "r" (n & 3));
#elif defined(__x86_64__)
	size_t nq = n >> 3;
	asm volatile ("cld ; rep ; stosq ; movl %3,%%ecx ; rep ; stosb"
		      :"+c" (nq), "+D" (q)
		      : "a" ((unsigned char)c * 0x0101010101010101U),
			"r" ((uint32_t) n & 7));
#else*/
	/*@
		loop invariant 0 <= n <= \at(n,Pre);
		loop invariant \forall integer i; 0 <= i < (\at(n,Pre) - n) ==> ((char*)dst)[i] == c;
		loop invariant q == (char*)dst+(\at(n,Pre) - n);
		loop assigns n, q, ((char*)dst)[0..(\at(n,Pre)-n)-1];
		loop variant n;
	@*/
	while (/*n--*/n) {
		*q++ = c;
		n--; //inserted code
	}
//#endif

	return dst;
}
