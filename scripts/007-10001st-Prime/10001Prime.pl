#!/usr/bin/perl -w

# Program '10001Prime'
# What is the 10,0001st prime number?

my @primes = ( 2, 3, 5, 7, 11, 13, 17 );
my $g = 18;
until ( scalar(@primes) == 10001 ) {
    if ( &primeCheck($g) == 1 ) {
        push @primes, $g;
        $g++;
    }
    else {
        $g++;
    }
}

print "$primes[$#primes]\n";

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
