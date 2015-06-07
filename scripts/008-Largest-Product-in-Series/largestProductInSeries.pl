#!/usr/bin/perl -w

# Program 'largestProductInSeries'
# Find greatest product of five consecutive digits in 1000-digit number

# NOTE: Requires input of 1000-digit number

open ( IN1, $ARGV[0] ) || die "Input error.\n";

my $num;
while ( <IN1> ) {
    chomp;
    $num .= $_
}

my $great = 0;
for ( my $k = 0; $k <= length($num)-5; $k++ ) {
    my $guess = substr $num, $k, 5;
    if ( &times($guess) > $great ) {
        $great = &times($guess);
    }
}

print $great,"\n";


sub times {
    my ($num) = @_;
    my (@digits) = split "", $num;
    my $pro = 1;
    foreach ( @digits ) {
        $pro *= $_;
    }
    return $pro;
}
