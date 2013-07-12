
/*
 * strncmp.c
 */

#include <string.h>


/*@
	requires n >= 0;
	requires \valid(s1+(0..n-1));
	requires \valid(s2+(0..n-1));
	requires \separated(s1+(0..n-1), s2+(0..n-1));
	assigns \nothing;
  
	behavior normal_n_eq:
		assumes \exists integer i; 0 <= i < n && Length_of_str_is(s1,i) && Length_of_str_is(s2,i)
												&& (\forall integer k; 0 <= k < i ==> s1[k] == s2[k]);
  		ensures \result == 0;

	behavior normal_n_not_eq:
		assumes \exists integer i; 0 <= i < n && Length_of_str_is(s1,i) && Length_of_str_is(s2,i)
												&& (\exists integer k; 0 <= k <= i && s1[k] != s2[k]);
  		ensures \result != 0;

	behavior larger_n_eq:
		assumes \forall integer i; 0 <= i < n ==> s1[i] != 0;
		assumes \forall integer i; 0 <= i < n ==> s2[i] != 0;
		assumes \forall integer i; 0 <= i < n ==> s1[i] == s2[i];
		ensures \result == 0;

	behavior larger_n_not_eq:
		assumes \forall integer i; 0 <= i < n ==> s1[i] != 0;
		assumes \forall integer i; 0 <= i < n ==> s2[i] != 0;
		assumes \exists integer i; 0 <= i < n && s1[i] != s2[i];
		ensures \result != 0;

	behavior s1_s2_smaller: 
		assumes \exists integer i, j; 0 <= i < n && 0 <= j < n
				&& i != j && Length_of_str_is(s1, i) && Length_of_str_is(s2, j);
		ensures \result != 0;

	behavior s1_smaller:
		assumes \exists integer i; 0 <= i < n && Length_of_str_is(s1, i);
		assumes \forall integer i; 0 <= i < n ==> s2[i] != 0;
		ensures \result != 0;	

	behavior s2_smaller:
		assumes \forall integer i; 0 <= i < n ==> s1[i] != 0;
		assumes \exists integer i; 0 <= i < n && Length_of_str_is(s2, i);
		ensures \result != 0;	

	behavior zero:
		assumes n == 0;
		ensures \result == 0;

  complete behaviors;
  disjoint behaviors;
@*/
int strncmp(const char *s1, const char *s2, size_t n)
{
	const /*unsigned*/ char *c1 = (const /*unsigned*/ char *)s1;
	const /*unsigned*/ char *c2 = (const /*unsigned*/ char *)s2;
	/*unsigned*/ char ch;
	int d = 0;

  /*@
	  loop invariant \base_addr(c1) == \base_addr(s1);
	  loop invariant \base_addr(c2) == \base_addr(s2);
	  loop invariant 0 <= n <= \at(n, Pre);
	  loop invariant \forall integer i; 0 <= i < (\at(n,Pre) - n) ==> s1[i] == s2[i];
	  loop invariant s1 <= c1 <= s1+\at(n, Pre);
	  loop invariant s2 <= c2 <= s2+\at(n, Pre);
	  loop invariant c1 == s1 + (\at(n, Pre) - n);
	  loop invariant c2 == s2 + (\at(n, Pre) - n);
	  loop invariant d == 0;
	  loop assigns n, c1, c2, ch, d;
	  loop variant n;
	@*/
	while (/*n--*/n) {
		d = (int)(ch = *c1++) - (int)*c2++;
		if (d || !ch)
			break;

		n--; // inserted code
	}

	return d;
}
