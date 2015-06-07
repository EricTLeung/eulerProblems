#!/usr/bin/perl -w

# Program 'sumSquare difference
# Find the difference between the sum of the squares of the 
# first one hundred natural numbers and the square of the sum.

my $sum1 = 0; # Sum of squares
my $sum2 = 0; # Square of sums

for ( my $n = 1; $n <= 100; $n++ ) {
    $sum1 += $n ** 2;
}

for ( my $k = 1; $k <= 100; $k++ ) { 
    $sum2 += $k
}
$sum2 = $sum2 ** 2;

my $diff = $sum2 - $sum1;
print $diff,"\n";
