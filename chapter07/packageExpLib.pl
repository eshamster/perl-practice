package B;
$n = 3;
print "((a)) ", __PACKAGE__, " n:", $n, "\n";
print "((b)) B::n:", $B::n, "\n";
print "((c)) main::n:", $main::n, "\n";

1;
