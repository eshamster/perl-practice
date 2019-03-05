#!/usr/bin/env perl -w

$n = 1;
print "(01) ", __PACKAGE__, " n:", $n, "\n";
require "packageExpLib.pl";

{
    print "(02) ", __PACKAGE__, " n:", $n, "\n";

    package A;
    $n = 5;
    print "(03) ", __PACKAGE__, " n:", $n, "\n";
    print "(04) A::n:", $A::n, "\n";
    print "(05) B::n:", $B::n, "\n";
    print "(06) main::n:", $main::n, "\n";

    package B;
    $n = $n + 1;
    print "(07) ", __PACKAGE__, " n:", $n, "\n";
    print "(08) A::n:", $A::n, "\n";
    print "(09) B::n:", $B::n, "\n";
    print "(10) main::n:", $main::n, "\n";
}

$n = $n + 1;
$C::n = 55;
print "(11) ", __PACKAGE__, " n:", $n, "\n";
print "(12) A::n:", $A::n, "\n";
print "(13) B::n:", $B::n, "\n";
print "(14) C::n:", $C::n, "\n";
print "(15) main::n:", $main::n, "\n";
