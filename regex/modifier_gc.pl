
# /gc, do not reset the position after a failed match

# with /gc
$x = "cat dog ---"; # 3 words
while ($x =~ /(\w+)/gc) {
	print "Word is $1, ends at position ", pos $x, "\n";
}
while ($x =~ /(\w+|-+)/gc) {
	print "Word is $1, ends at position ", pos $x, "\n";
}

# Word is cat, ends at position 3
# Word is dog, ends at position 7
# Word is ---, ends at position 11


# with /g only
$x = "cat dog ---"; # 3 words
while ($x =~ /(\w+)/g) {
	print "Word is $1, ends at position ", pos $x, "\n";
}
while ($x =~ /(\w+|-+)/g) {
	print "Word is $1, ends at position ", pos $x, "\n";
}

# Word is cat, ends at position 3
# Word is dog, ends at position 7
# Word is cat, ends at position 3
# Word is dog, ends at position 7
# Word is ---, ends at position 11

