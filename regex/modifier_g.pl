
# global matching

$x = "cat dog house"; # 3 words
while ($x =~ /(\w+)/g) {
	print "Word is $1, ends at position ", pos $x, "\n";
}
# output:
# Word is cat, ends at position 3
# Word is dog, ends at position 7
# Word is house, ends at position 13

# without g option, will end with infinite loop
# while ($x =~ /(\w+)/) {
# 	print "Word is $1, ends at position ", pos $x, "\n";
# }
# 
