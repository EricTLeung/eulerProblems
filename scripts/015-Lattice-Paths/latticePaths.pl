#!/usr/bin/perl

use strict;
use warnings;

# Program 'latticePaths.pl'
# Starting in the top left corner of a 2x2 grid, and only being able to move to
# the right and down, there are exactly 6 routes to the bottom right corner.
# How many such routes are there through 20x20 grid?

my $n = 20; # stands for 20x20
my $totalLength = 2 * $n; # total length of any path

my $top = &fact($totalLength); # get top of combination formula
print "$top\n";

my $bottom = &fact($n); # part of bottom of combination formula
print "$bottom\n";

my $total = &fact($totalLength) / ( 2 * &fact($n) );

print "$total\n";
