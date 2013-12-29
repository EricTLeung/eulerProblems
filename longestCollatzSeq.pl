#!/usr/bin/perl
use strict;
use warnings;

# Program 'longestCollatzSeq.pl'
# Which starting number, under one million, produces the longest chain?

# initial parameters
my $length = 0; # variable for keeping track of length of chain
my $maxLength = 0; # variable for max chain length
my $maxNum = 0; # maximum number for longest chain
my $last = 0; # last number in chain

# while loop until chain >1,000,000
for (my $n = 1; $n < 1000000; $n++) {
    
    # take care of first case
    if ($n == 1) {
        next;
    }

    $length = 0; # reset length
    $last = $n; # reset last number

    until ($last == 1) { # loop until you get 1 as last num
        my $info = &check($last); # check if odd or even
        if ($info == 1) { # if you get an even number
            $last = &even($last);
        } else { # if you get an odd number
            $last = &odd($last);
        }
        $length++; # increase chain length
    }
    
    if ($length > $maxLength) { # check if you get a longer chain
        $maxLength = $length;
        $maxNum = $n;
        print "New max Num is: $maxNum\n";
        print "New max length is: $maxLength\n\n";
    }
}

# return answer
print "Number is: $maxNum\n";

# subroutines
sub check { # returns 1 if even, 0 if odd
    my ($mys) = @_; # get number
    my $guess = $mys % 2;
    if ($guess == 0) {
        return 1;
    } else {
        return 0;
    }
}

sub even { # what to do when even
    my ($evenNum) = @_; # get number
    $evenNum = $evenNum/2;
    return $evenNum;
}

sub odd { # what to do when odd
    my ($oddNum) = @_; # get number
    $oddNum = 3*$oddNum + 1; # operations on number
    return $oddNum;
}
