#!/usr/bin/perl
use strict;
use warnings;

# Program 'largeSum'
# Work out the first ten digits of the sum of the following one-
# hundred 50-digit numbers

# initialize all numbers into array
open ( IN1, $ARGV[0] ) || die "Input error.\n";
my @num; # initialize number array
while ( <IN1> ) { # iterate through input
    chomp; # remove new line character
    push(@num, $_); # add number to array
}

# add numbers together
my $totalMod = 0; # initialize sum element
foreach (@num) { # iterate through numbers
    $totalMod += $_; # add to total
}

# return answer
$totalMod = substr($totalMod, 0, 11); # take first 11 places
$totalMod =~ s/\.//; # remove decimmal point
print "$totalMod\n"; # return answer
