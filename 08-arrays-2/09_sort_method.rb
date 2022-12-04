# typed: strict
numbers = [1, 0, 40, 50, 33, 11, 2, 3, -10, 100]
fruits = %w[apple orange grape banana]

# sort method returns a new array with the elements sorted in ascending order
# sort method does not mutate the caller

p numbers.sort
p fruits.sort

# sort! method mutates the caller
numbers.sort!
p numbers
