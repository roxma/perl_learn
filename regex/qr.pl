

my $rex = qr/foo/is;

if ("Foobar" =~ /${rex}bar/) {
	# expected
	print 'ok: "Foobar" =~ /${rex}bar/' . "\n"
} else {
	print 'not ok! "Foobar" =~ /${rex}bar/' . "\n"
}

if ("FooBar" =~ /${rex}bar/) {
	print 'ok: "FooBar" =~ /${rex}bar/' . "\n"
} else {
	# expected
	print 'not ok! "FooBar" =~ /${rex}bar/' . "\n"
}

print "$a"
