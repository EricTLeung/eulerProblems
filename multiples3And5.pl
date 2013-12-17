#!/usr/bin/perl -w

# Find the sum of all the multiples of 3 or 5 below 1000.

use strict;

my $total = 0;
my $up = 1000;
for ( my $n = 1; $n < $up; $n++ ) {
    if ( $n % 3 == 0 || $n % 5 == 0 ) {
        $total += $n;
    }
}
print "$total\n";
