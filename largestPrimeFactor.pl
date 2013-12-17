#!/usr/bin/perl -w

# Program 'largestPrimeFactor'
# What is the largest prime factor of the number 600851475143

use strict;

my $n = 600851475143;

my $t = 1;
while ( $t == 1 ) {
    $n = &prime($n);
}

sub prime {
    my ($n) = @_;
    for ( my $i = 2; $i <= $n; $i++ ) {
        if ( $n % $i == 0 ) {
            if ( $n / $i == 1 ) {
                print "$n\n";
                $t = 0;
            }
            else {
                my $ans = $n / $i;
                return $ans;
                last;
            }
        }
    }
}
