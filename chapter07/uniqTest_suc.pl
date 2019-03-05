#!/usr/bin/env perl -w

# 下記require内のuniqと本ファイルのuniqが衝突しない :-)
require "arrUtil_with_package.pl";

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

$ ./uniqTest_suc.pl 
5 is unique!
7 is unique!
3 is unique!
7 is not unique!
3 is not unique!
2 is unique!
5 is not unique!
=cut
