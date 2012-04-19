load "gr_common.gnu"

tdir = "def/"
tsub = "\nCore 2 Duo E6600 2.40 GHz, 4 MB L2 cache, 1066 MT/s FSB\nVisual C 2008, 32 bit"

set output bdir.tdir."img_random_change".bext
set title "Random Change (Remove + Insert)".tsub
data = bdir.tdir.'dat_random_change.lst'

plot data using 1:2 title columnheader(2), \
	for [i=3:13] '' using 1:i title columnheader(i)

