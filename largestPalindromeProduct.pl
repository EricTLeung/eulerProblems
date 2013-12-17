#!/usr/bin/perl -w

# Program 'largestPalindromeProduct'
# Find the largest palindrom made from the product of two 3-digit numnbers

my $great = 0;
for ( my $j = 100; $j <= 999; $j++ ) {
    for ( my $k = 100; $k <= 999; $k++ ) {
        my $product = $j * $k;
        if ( &pali($product) ) {
            if ( $product > $great ) {
                $great = $product;
            }
        }
    }  
}

print "$great\n";


sub pali { # Check if num is palindrom
    my ($n) = @_;
    my @num = split "", $n;
    my @numRev = reverse( @num );
    my $first = join "", @num;
    my $sec = join "", @numRev;
    if ( $first == $sec ) {
        return 1;
    } 
    else {
        return 0;
    }
}
