# typed: strict
# this is the most common way to combine arrays
p [1, 2, 3, 4] + [5, 6, 7, 8]

# concat method mutates the caller

numbers = (1..10).to_a
numbers_2 = (11..20).to_a

numbers.concat(numbers_2)

p numbers

# quites the duplicate elements
p [1, 2, 3, 4] - [2, 3, 4, 5] # this is the most common way to subtract arrays
