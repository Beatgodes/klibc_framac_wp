/*
 * memcpy.c
 * frama-c -wp -wp-rte memcpy.c
 */

#include <string.h>
#include <stdint.h>


void *memcpy(void *dst, const void *src, size_t n)
{
	const char *p = src;
	char *q = dst;

/*#if defined(__i386__)
	size_t nl = n >> 2;
	asm volatile ("cld ; rep ; movsl ; movl %3,%0 ; rep ; movsb":"+c" (nl),
		      "+S"(p), "+D"(q)
		      :"r"(n & 3));
#elif defined(__x86_64__)
	size_t nq = n >> 3;
	asm volatile ("cld ; rep ; movsq ; movl %3,%%ecx ; rep ; movsb":"+c"
		      (nq), "+S"(p), "+D"(q)
		      :"r"((uint32_t) (n & 7)));
#else*/
  /*@
     loop invariant 0 <= n <= \at(n,Pre);
     loop invariant p == src+(\at(n, Pre) - n);
     loop invariant q == dst+(\at(n, Pre) - n);
     loop invariant (char*)dst <= q <= (char*)dst+\at(n,Pre);
     loop invariant (char*)src <= p <= (char*)src+\at(n,Pre);
     loop invariant \forall integer i; 0 <= i < (\at(n, Pre) - n) ==> ((char*)dst)[i] == ((char*)src)[i];
     loop assigns n, q, p, ((char*)dst)[0..(\at(n,Pre)- n - 1)];
     loop variant n;
   */
  while (n/*n--*/) {
		*q++ = *p++;
        n--; //inserted code
	}
/*#endif*/

	return dst;
}
