#!/usr/bin/perl -w

# Program 'evenFibo'
# Consider terms in Fibonacci seq whose values do not exceed four million
# Find the sum of the even-valued terms

my $j = 2;
my $k = 1;
my $sum = 0;
while ( $j < 4000000 ) {
    if ( $j % 2 == 0 ) {
        $sum += $j;
    }
    $j = $j + $k;
    $k = $j - $k;
}
print "$sum\n";
