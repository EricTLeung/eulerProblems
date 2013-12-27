#!/usr/bin/perl -w

# Program 'highDivisibleTriangleNum'
# What is the value of the first triangle number to have over five hundred
# divisors?

# Farthest: 9033375

use strict;

my $sors = 0; # number of divisors
my $num = 0; # triangle number place
my $triangle; # triangle numnber

# testing phase
my $test1 = &sum(10); # find 
print "$test1\n";
my @test = &divisors($test1);
print "@test\n";
print scalar(@test),"\n";

until ( $sors > 500 ) { # until num of divisors greater than 500
    $num++; # increase number
#   print "Num: $num\n";
    my $tri = &sum($num); 
    $triangle = $tri;
#   print "Tri Num: $tri\n";
    my @divide = &divisors($tri);
    $sors = scalar( @divide ); 
#   print "$sors\n\n";

    if ( $num % 250 == 0 ) {
        print "Triangle Num: $tri\n";
        print "Num Divisors: $sors\n\n";
    }

}

# return triangle number
print "$triangle\n";

# subroutines for script
sub sum { # sum of first 'n' numbers
    my ($n) = @_; # take number
    my $sum = $n * ($n+1) / 2; # Gauss' formula
    return $sum; # return result
}

sub divisors { # Find divisors for number
    my ($n) = @_; # take in number
    my @divide; # make divisors array
    for ( my $k = 1; $k < $n/2; $k++ ) {
        my $l = $n / $k;
        $l = int($l);
        if ( $l*$k == $n ) {
            push @divide, $l;
            push @divide, $k;
        }
    }
    my %hash;
    foreach ( @divide ) {
        $hash{$_} = 1;
    }
    @divide = keys(%hash);
    @divide = sort( @divide );
    return @divide;
}
