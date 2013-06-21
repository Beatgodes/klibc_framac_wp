/*
 * memmem.c
 *
 * Find a byte string inside a longer byte string
 *
 * This uses the "Not So Naive" algorithm, a very simple but
 * usually effective algorithm, see:
 *
 * http://www-igm.univ-mlv.fr/~lecroq/string/
 */

#include <string.h>

/*@
	requires m >= 0;
	requires n >= 0;
	requires \valid(((char*)haystack)+(0..n-1));
	requires \valid(((char*)needle)+(0..m-1));
	requires \separated(((char*)haystack)+(0..n-1), ((char*)needle)+(0..m-1));
	assigns \nothing;

	behavior err:
		assumes m > n || m == 0 || n == 0;
		ensures \result == \null;

	behavior not_occur:
		assumes n >= m && m != 0 && n != 0;
		assumes \forall integer j; 0 <= j <= n-m ==> (\exists integer i; 0 <= i < m ==> ((char*)needle)[i] != ((char*)haystack)[j+i]);
		ensures \result == \null;

	behavior occr:
		assumes n >= m && m != 0 && n != 0;
		assumes \exists integer j; 0 <= j <= n-m && (\forall integer i; 0 <= i < m ==> ((char*)needle)[i] == ((char*)haystack)[j+i]);
		ensures \result != \null;

	complete behaviors;
	disjoint behaviors;
@*/
void *memmem(const void *haystack, size_t n, const void *needle, size_t m)
{
	const /*unsigned*/ char *y = (const /*unsigned*/ char *)haystack;
	const /*unsigned*/ char *x = (const /*unsigned*/ char *)needle;

	size_t j, k, l;

	if (m > n || !m || !n)
		return NULL;

	if (1 != m) {
		if (x[0] == x[1]) {
			k = 2;
			l = 1;
		} else {
			k = 1;
			l = 2;
		}

		j = 0;
		/*@
			loop invariant x[0] == x[1] ==> (k == 2 && l == 1);
			loop invariant x[0] != x[1] ==> (k == 1 && l == 2);
			loop invariant \base_addr(x) == \base_addr(needle);
			loop invariant \base_addr(y) == \base_addr(haystack);
			loop invariant 0 <= j <= n-m+2;
			//loop invariant \forall integer i; 0 <= i < j ==> (\exists integer z; 0 <= z < m-2 ==> needle[2+z] != haystack[z+i+2]);
			loop assigns j;
			loop variant \at(n,Pre)-\at(m,Pre)-j;
		@*/
		while (j <= n - m) {
			if (x[1] != y[j + 1]) {
				j += k;
			} else {
				if (!memcmp(x + 2, y + j + 2, m - 2)
				    && x[0] == y[j])
					return (void *)&y[j];
				j += l;
			}
		}
	} else
		/*@
			loop invariant \base_addr(x) == \base_addr(needle);
			loop invariant \base_addr(y) == \base_addr(haystack);
			loop invariant ((char*)haystack) <= y <= ((char*)haystack)+\at(n, Pre);
			loop invariant y == ((char*)haystack)+(\at(n,Pre) -n);
			loop invariant \forall integer i; 0 <= i < (\at(n,Pre) - n) ==> ((char*)haystack)[i] != ((char*)needle)[0];
			loop invariant 0 <= \at(n, Here) <= \at(n, Pre);
			loop assigns y, n;
			loop variant n;
		@*/
		while(n){
			if (*y == *x)
				return (void *)y;
			y++;
			n--;
		}

		// original code.. does not work...
		/*	
		do {
			if (*y == *x)
				return (void *)y;
			y++;
		} while (--n);
*/
	return NULL;
}
