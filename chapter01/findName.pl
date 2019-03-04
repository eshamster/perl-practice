#!/usr/bin/env perl -w

use File::Find;

find(sub { print "$File::Find::name\n"; }, '.');
