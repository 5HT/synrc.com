#!/bin/sh

# Synrc Site Templates when designing HTML pages

create_page()
{
	cat templates/begin.htx > $1.htm
	cat templates/head.htx >> $1.htm
	cat templates/$1.htx >> $1.htm
	cat templates/foot.htx >> $1.htm
	cat templates/end.htx >> $1.htm
}

create_page privacy
create_page brandbook

# Synrc HeVeA Templates for both HTML rendering and TeX outputs

create_hevea()
{
	hevea $1.tex -o $1.htm
}

create_hevea "index" labs
create_hevea "feedback" labs
create_hevea "research" labs
create_hevea "labs" labs
create_hevea "research/io/index" lang clr proto