#!/usr/bin/env perl -w

use File::Find;

find(\&fileProc, '.');

sub fileProc {
    return unless -f $_;
    return unless /\.sample$/;

    open IN, $_;

    while (<IN>) { # ここで$_が行の内容になる
        if (/grep/) { # ← 暗黙に$_を見ている模様
            print "$File::Find::name($.): $_";
            # ?? "$." ??
            # Google先生: perl dollar dot
            #     答えの他、perlvarというキーワードも手に入ったのでperldocしてみる↓
            # > perldoc perlvar | grep "$\."
            #     $.      Current line number for the last filehandle accessed.
            #     ......
        }
    }

    close IN;
}
