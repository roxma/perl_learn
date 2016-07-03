
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



