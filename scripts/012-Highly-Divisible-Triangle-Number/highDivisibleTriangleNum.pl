#!/usr/bin/perl -w

# Program 'highDivisibleTriangleNum'
# What is the value of the first triangle number to have over five hundred
# divisors?

use strict;

# initialize variables
my $sors = 0; # number of divisors
my $num = 2000; # triangle number place
my $triangle = 0; # triangle numnber answer
my $maxSors = 0; # maximum number of divisors seen so far

# loop to find number 
until ( $sors > 500 ) { # until num of divisors greater than 500
    $num++; # increase number
    $triangle = &sum($num); # find triangle number
    $sors = &divisorsMod($triangle);
}

# return triangle number
print "$triangle\n";

# subroutines for script
sub sum { # sum of first 'n' numbers
    my ($n) = @_; # take number
    my $sum = $n * ($n+1) / 2; # Gauss' formula
    return $sum; # return result
}

sub divisorsMod { # find num of divisors using mod operation
    my ($n) = @_; # take in number
    my $divisorsNum = 0; # initialize number of divisors variable
    my $sqNum = sqrt($n); # find square root of triangle number
    for ( my $k = 1; $k <= $sqNum; $k++ ) { # loop until sqrt of number
        if ($n % $k == 0) { # if the modulus is equal to zero
            $divisorsNum++; # add 1 to total num of divisors
        }
    }
    $divisorsNum *= 2; # multiply by 2 to count other half
    return $divisorsNum; # return answer
}
