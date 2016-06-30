

# /x is used to write more readable multi-line regex

my $rex = qr{
	(foo|bar)  # match foo or bar
}x;

if ( "foo" =~ $rex ) {
	print "with x, match foo ok\n";
} else {
	print "with x, match foo not ok\n";
}

my $rex = qr{
	(foo|bar)  # match foo or bar
};

if ( "foo" =~ $rex ) {
	print "without x, match foo ok\n";
} else {
	print "without x, match foo not ok\n";
}
