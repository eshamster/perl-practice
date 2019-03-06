use strict;
package Kosame;

use Heppoko;
our @ISA = qw(Heppoko); # !! 継承 !!

# 以下オーバーライド
sub tenmei    { "小雨支店" };
sub juusho    { "梅雨県小雨郡 4-5-6" };
sub denwa     { "0123-45-6789" };

1;
