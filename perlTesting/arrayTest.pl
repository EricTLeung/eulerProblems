#!/usr/bin/perl
use warnings;
use strict;

my @array1 = qw( a b c );
my @array2 = qw( X Y Z );

my @matrix = (\@array1, \@array2);

for my $row (0..$#{$matrix[0]}) {
   for my $col (0..$#matrix) {
      print $matrix[$col][$row], "\t";
   }
   print "\n";
}
