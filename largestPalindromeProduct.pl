#!/usr/bin/perl -w

# Program 'largestPalindromeProduct'
# Find the largest palindrom made from the product of two 3-digit numnbers

my $great = 0; # init variable for answer
for ( my $j = 100; $j <= 999; $j++ ) { # first three digit number
    for ( my $k = 100; $k <= 999; $k++ ) { # second three digit number
        my $product = $j * $k; # find the product
        if ( &pali($product) ) { # T of F for if it is palindrome
            if ( $product > $great ) { # if I get greater palindrome...
                $great = $product; # ...keep the number
            }
        }
    }  
}

print "$great\n"; # give answer found


sub pali { # Check if num is palindrome
    my ($n) = @_; # save number
    my @num = split "", $n; # split number into array
    my @numRev = reverse( @num ); # reverse the array
    my $first = join "", @num; # change back to number
    my $sec = join "", @numRev; # change back to number
    if ( $first == $sec ) { # check if they are the same
        return 1; # return true
    } 
    else { # if not the same...
        return 0; # ...return false
    }
}
