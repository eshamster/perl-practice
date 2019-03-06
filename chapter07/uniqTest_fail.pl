#!/usr/bin/env perl -w

# 下記require内のuniqと本ファイルのuniqが衝突する :-(
require "arrUtil_no_package.pl";

my %uniq = ();
my @in = (5, 7, 3, 7, 3, 2, 5);

for $in (@in) {
    if (&uniq($in)) {
        print "$in is unique!\n";
    } else {
        print "$in is not unique!\n";
    }
}

sub uniq {
    my $in = shift;

    if (not $uniq{$in}) {
        $uniq{$in} = 1;
        1;
    } else {
        0;
    }
}

=pod
実行結果:

$ ./uniqTest_fail.pl 
Subroutine uniq redefined at arrUtil_no_package.pl line 1.
5 is unique!
7 is unique!
3 is unique!
7 is unique!
3 is unique!
2 is unique!
5 is unique!
=cut
