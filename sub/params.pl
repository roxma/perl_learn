
use strict;
use warnings;
use 5.010;

sub Foo {
	my $v1 = shift;
	my $v2 = shift;
	my $v3 = shift;

	print "v1[$v1] v2[$v2] v3[$v3]\n";
}

Foo(1,2,3)
# v1[1] v2[2] v3[3]

