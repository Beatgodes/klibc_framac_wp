#include <stdio.h>
#include <stdbool.h>

#include <stdioint.h>	// inserted

/*@
	requires f == &(stdio_pvt(f)->pub);
	requires valid_IO_file_pvt(stdio_pvt(f));
	assigns stdio_pvt(f)->ibytes, stdio_pvt(f)->pub._IO_eof, stdio_pvt(f)->pub._IO_error, stdio_pvt(f)->obytes, f->_IO_error;
@*/
void rewind(FILE *f)
{
	if (!fseek(f, 0, SEEK_SET))
		f->_IO_error = false;
}
