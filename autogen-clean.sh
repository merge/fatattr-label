#!/bin/sh
if [ -f Makefile ]; then
	echo "Making make distclean..."
	make distclean
fi
echo "Removing autogenned files..."
rm -f config.* configure install-sh missing mkinstalldirs Makefile.in ltmain.sh */Makefile.in ltconfig stamp* aclocal.m4 compile depcomp

rm -rf autom4te.cache
echo "Done."
