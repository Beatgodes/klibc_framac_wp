/*
 * fgetc.c
 */

#include "stdioint.h"

/*@
  requires file != \null;
  requires valid_IO_file_pvt(stdio_pvt(file));

  behavior no_error:
    assumes (stdio_pvt(file)->ibytes) > 0;
    assigns stdio_pvt(file)->ibytes, stdio_pvt(file)->data;
    ensures stdio_pvt(file)->ibytes == \at(stdio_pvt(file)->ibytes, Pre)-1;
    ensures stdio_pvt(file)->data == \at(stdio_pvt(file)->data, Pre) +1;
    ensures \result == (int)(*\at(stdio_pvt(file)->data,Pre));
  behavior error:
    assumes (stdio_pvt(file))->ibytes == 0;
    assigns \nothing;
    ensures \result == EOF; // temporary!
    //ensures that if fread() == 1 ==> \result == ch, else, \result == -1;
  complete behaviors;
  disjoint behaviors;
 @*/
int fgetc(FILE *file)
{
  struct _IO_file_pvt *f = stdio_pvt(file);
  unsigned char ch;

  if (/*__likely*/(f->ibytes)) {
    f->ibytes--;
    return (unsigned char) *f->data++;
  } else {
    //return _fread(&ch, 1, file) == 1 ? ch : EOF;
    return EOF; // inserted code
  }
}
