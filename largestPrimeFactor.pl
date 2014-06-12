#!/usr/bin/perl -w

# Program 'largestPrimeFactor'
# What is the largest prime factor of the number 600851475143

use strict;

my $n = 600851475143; # number to factor

my $t = 1; # constant to keep while loop going
while ( $t == 1 ) { 
    $n = &prime($n); # run prime factorization subroutine
}

sub prime { # prime factorization subroutine
    my ($n) = @_; # take in large number to factor
    for ( my $i = 2; $i <= $n; $i++ ) { # start at 2, until get to num
        if ( $n % $i == 0 ) { # check if large num divisible by number
            if ( $n / $i == 1 ) { # if you divide by number factoring...
                print "$n\n"; # print out large prime number
                $t = 0;
            }
            else {
                my $ans = $n / $i;
                return $ans; # return smaller number
                last; # exit loop
            }
        }
    }
}
