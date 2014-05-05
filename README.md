klibc_framac_wp
===============

[kLIBC](http://trac.netlabs.org/libc) verification with [Frama-C](http://frama-c.com/) and [WP](http://frama-c.com/wp.html)

Verification of functions from `<string.h>` and `<stdio.h>`

Frama-C Fluorine 2 with
  - Alt-ergo 0.95.1
  - Z3 4.3.1
  - CVC3 2.41

Usage
=============

Before launching Frama-C, add the following Environment Variable

    export CPP='gcc -C -E -I/[repo location]/include -I.'

So that Frama-C can find the kLIBC header files


Further reading
=============

For more information on verified functions, check the header files.

For further information, please refer to the following [paper](http://link.springer.com/chapter/10.1007/978-3-319-06200-6_29) 

If you find this work useful, please cite the following publication:

    Carvalho, Nuno, et al. "Formal Verification of kLIBC with the WP Frama-C Plug-in." NASA Formal Methods. Springer International Publishing, 2014. 343-358.
