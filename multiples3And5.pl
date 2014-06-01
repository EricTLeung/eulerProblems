#!/usr/bin/perl -w

# Find the sum of all the multiples of 3 or 5 below 1000.

use strict;

my $total = 0; # set empty total
my $up = 1000; # upper limit
for ( my $n = 1; $n < $up; $n++ ) { # starting at 1 until reach limit
    if ( $n % 3 == 0 || $n % 5 == 0 ) { # modulus 3 or 5
        $total += $n; # add multiple to total
    }
}
print "$total\n"; # print out total
