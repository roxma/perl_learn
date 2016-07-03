
use strict;
use warnings;
use 5.010;
use Data::Dumper;

# %h1 is copy to %h2
my %h1 = ('foo'=>'bar');
my %h2 = %h1;

# modify h1 will not affect h2
$h1{'foo'} = 'mybar';

print "h1: " . Dumper(%h1) . "\n";
print "h2: " . Dumper(%h2) . "\n";
# output:
# h1: $VAR1 = 'foo';
# $VAR2 = 'mybar';
# 
# h2: $VAR1 = 'foo';
# $VAR2 = 'bar';


# reference
my $r1 = \%h1;
# this statement also modifies h1
${$r1}{'foo'} = 'mybar2';

print "r1: " . Dumper($r1) . "\n";
print "h1: " . Dumper(%h1) . "\n";
# output:
# r1: $VAR1 = {
#           'foo' => 'mybar2'
#         };
# 
# h1: $VAR1 = 'foo';
# $VAR2 = 'mybar2';


# copy hash by dereferencing
my %h3 = %{$r1};
$h3{'foo'} = 'mybar3';
print "h1: " . Dumper(%h1) . "\n";
print "h3: " . Dumper(%h3) . "\n";
# output:
# h1: $VAR1 = 'foo';
# $VAR2 = 'mybar2';
# 
# h3: $VAR1 = 'foo';
# $VAR2 = 'mybar3';


my %h4 = ('foo' => [1,2,3,4,5] );
my $r4 = $h4{'foo'};
my $len4 = @{$r4};
print "r4: " . Dumper($r4) . ', length:' . $len4 . ', @#{$r4}:' . $#{$r4} .  "\n"; # '@#{$r4}' is the last index of array element
# output:
# r4: $VAR1 = [
#           1,
#           2,
#           3,
#           4,
#           5
#         ];
# , length:5, @#{$r4}:4

# my %h5 = ('foo' => ( 'bar' => 'hello world') ); # ill formed, hash value had to be of scalar type.
my %h5 = ('foo' => { 'bar' => 'hello world'} );
print Dumper(%h5);
# $VAR1 = 'foo';
# $VAR2 = {
#           'bar' => 'hello world'
#         };

