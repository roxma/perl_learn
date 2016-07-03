
use strict;
use warnings;
use 5.010;

# An array is a variable that stores an ordered list of scalar values

my @arr = (1,2,3,4,5);
my $len = @arr;

$arr[0] = 6; # access first element

print "arr: @arr\n";
# print "len: $arr\n"; # Global symbol "$arr" requires explicit package name at array.pl line 14.
print "len: $len\n";
# output
# arr: 6 2 3 4 5
# len: 5
