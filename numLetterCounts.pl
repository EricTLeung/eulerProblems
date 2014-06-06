#!/usr/bin/perl -w

# Program 'numLettersCounts.pl'
# If the numbers 1 to 4 are written out in words: one, twi, three, four, five,
# then there are 3+3+5+4+4 = 19 letters used in total. If all the numbers from 1
# to 1000 (one thousand) inclusive were written out in words, how many letters
# would be used?

# write out hash for all numbers
my %oneHash = (
  #num => length of word number
  1   => 3, # one = 3
  2   => 3, # two = 3
  3   => 5, # three = 5
  4   => 4, # four = 4
  5   => 4, # five = 4
  6   => 3, # six = 3
  7   => 5, # seven = 5
  8   => 5, # eight = 5
  9   => 4, # nine = 4
);
my %twoHash = (
  10  => 3, # ten = 3
  11  => 6, # eleven = 6
  12  => 6, # twelve = 6
  13  => 8, # thirteen = 8
  14  => 8, # fourteen = 8
  15  => 7, # fifteen = 7
  16  => 7, # sixteen = 7
  17  => 9, # seventeen = 9
  18  => 8, # eighteen = 8
  19  => 8, # nineteen = 8
  2   => 6, # twenty = 6
  3   => 6, # thirty = 6
  4   => 5, # forty = 5
  5   => 5, # fifty = 5
  6   => 5, # sixty = 5
  7   => 7, # seventy = 7
  8   => 6, # eighty = 6
  9   => 6, # ninety = 6
);
my %threeHash = (
  1  => 13, # one hundred and = 3+7+3 = 13
  2  => 13, # two hundred and = 3+7+3 = 13
  3  => 15, # three hundred and = 5+7+3 = 15
  4  => 14, # four hundred and = 4+7+3 = 14
  5  => 14, # five hundred and = 4+7+3 = 14
  6  => 13, # six hundred and = 3+7+3 = 13
  7  => 15, # seven hundred and = 5+7+3 = 15
  8  => 15, # eight hundred and = 5+7+3 = 15
  9  => 19, # nine hundred and  = 9+7+3 = 19
);
my %fourHash = (
  1 => 11  # one thousand = 3+8 = 11
);

# generate all numbers
my @numbers = (1..1000); # create array of all the numbers

# create variables
my @ones; # keep all one digit numbers
my @twos; # keep all two digit numbers
my @threes; # keep all three digit numbers

# there is no @fours because there is only one four digit number

# iterate through numbers and sort
for (@numbers) {
	@temp = split "", $_; # split number into array
	$realNum = $_; # save actual number
	if (scalar(@temp) == 1) { # check one digit numbers
		push (@ones, $realNum); # put number with one digits
	} elsif (scalar(@temp) == 2) { # check two digit numbers
		push (@twos, $realNum); # put number with two digits
	} elsif (scalar(@temp) == 3) { # check three digit numbers
		push (@threes, $realNum); # put number with three digits
	}
}

# check one digit numbers
my $totalOnes;
for (@ones) {
	$totalOnes += $oneHash{$_};
}

# check two digit numbers
my $totalTwos; # make total two digit number variable
for (@twos) { # loop through two digit numbers
	if ($_ < 20) { # check for numbers less than 20
		$totalTwos += $twoHash{$_}; # add lengths to two digit var
	} else { # all greater numbers
		my $temp = $_; #temp store number
		my @tempNum = split "", $temp; # temp store number as array
		$totalTwos += 10*$twoHash{$tempNum[0]} + $totalOnes;
	}
}

# check three digit numbers
my $totalThrees; # make total three digit number variable
for (@threes) {
	my $temp = $_;
	my @tempNum = split "", $temp;
	$totalThrees += 100*$threeHash{$tempNum[0]} + $totalTwos - 3;
}

# add eleven to total for 'one thousand'
my $totalFours = $fourHash{1};

# print answer
print $totalOnes + $totalTwos + $totalThrees + $totalFours,"\n";
