#!/usr/bin/perl -w

# Program 'specialPythagTrip'
# There exists exactly one Pythagorean triple for which a+b+c = 1000
# Find the product abc.

my $product;
for ( my $a = 1; $a <= 332; $a++ ) {
    for ( my $b = $a+1; $b < 1000-2*$a; $b++ ) {
        my $c = 1000 - $a - $b; 
        if ( $a**2 + $b**2 == $c**2 ) {
            print "$a $b $c\n";
            print "Product = ", $a*$b*$c,"\n";
            print "Sum = ", $a+$b+$c,"\n";
        }
    }
}
