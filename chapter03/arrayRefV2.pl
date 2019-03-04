#!/usr/bin/env perl -w

my @tanka = (200, 100, 300, 50, 2000);
my @kosuu = (10, 20, 10, 50, 5);

print "kyou no uriage ==> ", &uriage(\@tanka, \@kosuu), "\n";

sub uriage() {
    my ($refTanka, $refKosuu) = @_;
    my $uriage = 0;

    for my $tanka (@$refTanka) {
        my $kosuu = shift @$refKosuu;
        $uriage += $tanka  * $kosuu;
    }

    return $uriage;
}
