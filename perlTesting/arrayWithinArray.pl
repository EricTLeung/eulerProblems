#!/usr/bin/perl
use warnings;
use strict;

# Testing the use of arrays within arrays to create the data structure
# equivalent to a matrix

# I want to work with a 2x2 matrix and to see if I can iterate through it

my @arr1 = (1, 2, 3, 4);
print "@arr1\n\n";
my @arr2 = (5, 6, 7, 8);
print "@arr2\n\n";

my @bigArr = (\@arr1, \@arr2);

for my $row (0..$#{$bigArr[0]}) {
    for my $col (0..$#bigArr) {
        print "$bigArr[$col][$row]\n";
    }
}
