/*
 * malloc.h
 *
 * Apparently people haven't caught on to use <stdlib.h>, which is the
 * standard place for this crap since the 1980's...
 */

#ifndef _MALLOC_H
#define _MALLOC_H

#include <klibc/extern.h>
#include <klibc/compiler.h>
#include <stddef.h>

/*@
	assigns \nothing;

	behavior null:
		assumes ptr == \null;
		ensures (1 == 1);

	behavior notnull:
		assumes ptr != \null;
		// freeable and allocable not implemented
		//assumes \freeable{Here}(ptr);
		frees ptr;
		//ensures \allocable{Here}(ptr);

	complete behaviors;
	disjoint behaviors;
@*/
__extern void free(void *ptr); // added var name

/*@
    requires size >= 0;
    assigns \nothing;

    behavior zero:
      assumes size == 0;
      ensures \result == \null;

    behavior non_zero:
      assumes size > 0;
      ensures \result == \null || \valid(((char*)\result)+(0..size-1));
      //ensures \result == \null || \fresh{Old, Here}(\result, size);

    complete behaviors;
    disjoint behaviors;
@*/
__extern __mallocfunc void *malloc(size_t size); // inserted var name


/*@
	requires size >= 0;
	assigns \nothing;

	behavior zero:
		assumes size == 0;
		ensures \result == \null;

	behavior nonzero:
		assumes size > 0;
		ensures \result == \null || \valid(((char*)\result)+(0..size));
		ensures \result != \null ==> \forall integer i ; 0 <= i < size ==> ((char*)\result)[i] == 0;
		//ensures \result == \null || (\fresh{Old, Here}(\result, size)  ==>
		//							 \forall integer i ; 0 <= i < size ==> ((char*)\result)[i] == 0);

	complete behaviors;
	disjoint behaviors;

@*/
__extern __mallocfunc void *zalloc(size_t size);

/*@
	requires size >= 0;
	requires nmemb >= 0;
	assigns \nothing;

	behavior zero:
		assumes size == 0 || nmemb == 0;
		ensures \result == \null;

	behavior nonzero:
		assumes size > 0 && nmemb > 0;
		ensures \result == \null || \valid(((char*)\result)+(0..(size*nmemb)));
		ensures \result != \null ==> \forall integer i ; 0 <= i < (size*nmemb) ==> ((char*)\result)[i] == 0;
		// fresh not implemented
		//ensures \result == \null || (\fresh{Old, Here}(\result, (size*nmemb))  ==>
		//							 \forall integer i ; 0 <= i < (size*nmemb) ==> ((char*)\result)[i] == 0);

	complete behaviors;
	disjoint behaviors;

@*/
__extern __mallocfunc void *calloc(size_t nmemb, size_t size);
__extern __mallocfunc void *realloc(void *, size_t);

#endif				/* _MALLOC_H */
