#!/usr/bin/perl -w

# Program 'highDivisibleTriangleNum'
# What is the value of the first triangle number to have over five hundred
# divisors

# Farthest: 9033375

use strict;

my $sors = 0;
my $num = 0;
my $triangle;

my $test1 = &sum(10);
print "$test1\n";
my @test = &divisors($test1);
print "@test\n";
print scalar(@test),"\n";

until ( $sors > 500 ) {
    $num++;
#   print "Num: $num\n";
    my $tri = &sum($num);
    $triangle = $tri;
#   print "Tri Num: $tri\n";
    my @divide = &divisors($tri);
    $sors = scalar( @divide ); 
#   print "Num Divisors: $sors\n\n";

    if ( $num % 250 == 0 ) {
        print "Triangle Num: $tri\n";
        print "Num Divisors: $sors\n\n";
    }

}

print "$triangle\n";

sub sum { # sum 
    my ($n) = @_;
    my $sum = $n * ($n+1) / 2;
    return $sum;
}

sub divisors { # Find divisors for number
    my ($n) = @_;
    my @divide;
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
