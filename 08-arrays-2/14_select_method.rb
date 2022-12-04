# typed: strict
grades = [80, 95, 13, 76, 28, 39]
fruits = %w[apple pear banana plum apricot]

# select method returns a new array containing elements of the original array that meet the criteria in the block

grades_above75 = grades.select { |grade| grade > 75 }
p grades_above75

first_letter_a_fruits = fruits.select { |fruit| fruit[0] == 'a' }
p first_letter_a_fruits

words = %w[level selfless racecar dinosaur]
palindromes = words.select { |word| word == word.reverse }
p palindromes
