#!/usr/bin/env perl -w

my $schedule;
$schedule[1][1] = 'mochitsuki';
$schedule[2][3] = 'mamemaki';
$schedule[3][3] = 'hinakazari';
$schedule[4][1] = 'usotsuki';
$schedule[5][5] = 'shinchou keisoku';
$schedule[7][7] = 'tanabata';
$schedule[8][31] = 'syukudai';

for my $month (1..12) {
    for my $day (1..31) {
        my $task = $schedule[$month][$day];

        if (defined $task) {
            print "$month/$day: $task seyo!\n"
        }
    }
}
