#include <string.h>

/*@
	requires n > 0;
	requires \valid((char*)dst+(0..n-1));
	assigns ((char*)dst)[0..n-1];
	ensures \forall integer i; 0 <= i < n ==> ((char*)dst)[i] == 0;
@*/
void bzero(void *dst, size_t n)
{
	memset(dst, 0, n);
}
