#!/usr/bin/perl -n

chomp;

# put space after any period that's followed by a non-number
s/\.(\D)/\. $1/g;
# put space before any period that's followed by a space
# the following space is introduced in the previous command
s/\. / \. /g;

# put space around colons and comas, unless they're surrounded by numbers
s/(\d)\.(\d)/$1DOTTKN$2/g;
s/(\d)\:(\d)/$1COLONTKN$2/g;
s/(\d)\,(\d)/$1COMATKN$2/g;

s/\W/ $& /g;

s/(\d)DOTTKN(\d)/$1\.$2/g;
s/(\d)COLONTKN(\d)/$1\:$2/g;
#s/(\d)COMATKN(\d)/$1\,$2/g;
s/(\d)COMATKN(\d)/$1$2/g;
s/([a-zA-Z])(\d)/$1 $2/g;
s/(\d)([a-zA-Z])/$1 $2/g;

print "$_\n";
