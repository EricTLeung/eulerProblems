#!/usr/bin/perl -w

# Program 'sumOfPrimes'
# Find the sum of all the primes below two million.

use strict;

my @primes = (2);
for ( my $n = 3; $n < 2000000; $n++ ) {
    if ( &primeCheck($n) == 1 ) {
        push @primes, $n;
    }
}
my $sum = 0;
foreach ( @primes ) {
    $sum += $_;
}
print "$sum\n";

sub primeCheck {
    my ($n) = @_;
    my $half = int( $n ** 0.5 );
    if ( $n % 2 == 0 ) {
        return 0;
    }
    else {
        for ( my $o = 3; $o <= $half; $o += 2 ) {
            if ( $n % $o == 0 ) {
                return 0;
            }
        }
        return 1;
    }
}
