#!/usr/bin/env perl -w

my @month = (
    ['January',   31, [1, 8,  15, 22, 29]],
    ['February',  28, [5, 12, 19, 26]    ],
    ['March',     31, [5, 12, 19, 26]    ],
    ['April',     30, [2, 9,  16, 23, 30]],
    ['May',       31, [7, 14, 21, 28]    ],
    ['June',      30, [4, 11, 18, 25]    ],
    ['July',      31, [2, 9,  16, 23, 30]],
    ['August',    31, [6, 13, 20, 27]    ],
    ['September', 30, [3, 10, 17, 24]    ],
    ['October',   31, [1, 8,  15, 22, 29]],
    ['Novenmber', 30, [5, 12, 19, 26]    ],
    ['December',  31, [3, 10, 17, 24, 31]],
    );
    
print "the second Sunday of $month[2][0] is $month[2][2][1]\n"
