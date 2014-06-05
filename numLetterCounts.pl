#!/usr/bin/perl -w

# Program 'numLettersCounts.pl'
# If the numbers 1 to 4 are written out in words: one, twi, three, four, five,
# then there are 3+3+5+4+4 = 19 letters used in total. If all the numbers from 1
# to 1000 (one thousand) inclusive were written out in words, how many letters
# would be used?

# write out hash for all numbers
my %hash = (
  #num => length of word number
  1    => 3, # one = 3
  2    => 3, # two = 3
  3    => 5, # three = 5
  4    => 4, # four = 4
  5    => 4, # five = 4
  6    => 3, # six = 3
  7    => 5, # seven = 5
  8    => 5, # eight = 5
  9    => 4, # nine = 4
  10   => 3, # ten = 3
  11   => 6, # eleven = 6
  12   => 6, # twelve = 6
  13   => 8, # thirteen = 8
  14   => 8, # fourteen = 8
  15   => 7, # fifteen = 7
  16   => 7, # sixteen = 7
  17   => 9, # seventeen = 9
  18   => 8, # eighteen = 8
  19   => 8, # nineteen = 8
  20   => 6, # twenty = 6
  30   => 6, # thirty = 6
  40   => 5, # forty = 5
  50   => 5, # fifty = 5
  60   => 5, # sixty = 5
  70   => 7, # seventy = 7
  80   => 6, # eighty = 6
  90   => 6, # ninety = 6
  100  => 13, # one hundred and = 3+7+3 = 13
  200  => 13, # two hundred and = 3+7+3 = 13
  300  => 15, # three hundred and = 5+7+3 = 15
  400  => 14, # four hundred and = 4+7+3 = 14
  500  => 14, # five hundred and = 4+7+3 = 14
  600  => 13, # six hundred and = 3+7+3 = 13
  700  => 15, # seven hundred and = 5+7+3 = 15
  800  => 15, # eight hundred and = 5+7+3 = 15
  900  => 19, # nine hundred and  = 9+7+3 = 19
  1000 => 14  # one thousand and = 3+8+3 = 14

# generate all numbers

# iterate through numbers and check hash

# check one digit numbers

# save sum of all one digit numbers

# check two digit numbers

# save sum of all 2 digit numbers

# check three digit numbers

# add eleven to total for 'one thousand'

# print answer
