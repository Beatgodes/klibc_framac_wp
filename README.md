klibc_framac_wp
===============

klibc Verification with Frama-C and WP

Verification of functions from string.h and stdio.h

Frama-C Fluorine 2 with
- Alt-ergo 0.95.1
- Z3 4.3.1
- CVC3 2.41

Usage:

Before launching Frama-C, add the following Environment Variable

  export CPP='gcc -C -E -I/[repo location]/include -I.'

So that Frama-C can find the klibc header files

For more information on verified functions, check the header files
