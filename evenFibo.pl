#!/usr/bin/perl -w

# Program 'evenFibo'
# Consider terms in Fibonacci seq whose values do not exceed four million
# Find the sum of the even-valued terms

# prints out program details
print "This script considers terms in the Fibonacci sequence whose values\n";
print "do not exceed four million.\n\n";
print "This script will find the sum of the even-valued terms in the\n";
print "Fibonacci sequence.\n\n";

my $j = 2; # create second number
my $k = 1; # create first number
my $sum = 0; # init sum variable
while ( $j < 4000000 ) { # don't want it to exceed four million
    if ( $j % 2 == 0 ) { # for even numbers...
        $sum += $j; # ...add to the sum
    }
    $j = $j + $k; # increase second number in sequence
    $k = $j - $k; # subtract new 2nd num with original 1st number
}
print "$sum\n"; # print final sum
