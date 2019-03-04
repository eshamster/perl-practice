#!/usr/bin/env perl -w

@January    = ('January',   31);
@February   = ('February',  28);
@March      = ('March',     31);
@April      = ('April',     30);
@May        = ('May',       31);
@June       = ('June',      30);
@July       = ('July',      31);
@August     = ('August',    31);
@September  = ('September', 30);
@October    = ('October',   31);
@Novenmber  = ('Novenmber', 30);
@December   = ('December',  31);

my @month = (\@January, \@February, \@March, \@April, \@May, \@June,
             \@July, \@August, \@September, \@October, \@Novenmber, \@December);

print "the 4th month is $month[3][0] and it has $month[3][1] days\n"
