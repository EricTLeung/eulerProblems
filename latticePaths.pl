#!/usr/bin/perl

use strict;
use warnings;

# Program 'latticePaths.pl'

my $n = 20; # stands for 20x20
my $moves = 2 * $n; # num of total moves

my $num = 2**$n; # find number of routes to center diagonal
$num -= 2; # take two away ...

my $total = 2; # ... and add it to the total


