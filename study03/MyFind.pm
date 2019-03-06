#!/usr/bin/env perl -w

use strict;
package MyFind;

use base 'Exporter';
our @EXPORT = qw(find $_);

sub find {
    my ($proc, $dir) = @_;
    chdir $dir;
    our $cwd;

    unless (defined $cwd) {
        $cwd = $dir;
    } else {
        $cwd .= ('/' . $dir); # 右辺のカッコはなくても良い
    }

    opendir my $dh, '.';

    for my $cur (readdir($dh)) {
        next if $cur eq '.' or $cur eq '..';
        $_ = $cur;
        our $name = $cwd . '/' . $cur;
        &$proc;

        if (-d $cur) {
            &find($proc, $cur);
            chdir '..';
            $cwd =~ s|/[^_/]*$||;
        }
    }

    closedir $dh;
}

1;
