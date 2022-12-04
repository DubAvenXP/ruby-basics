# typed: strict
numbers = [7, 9, 13, 25, 18]
p numbers

# shift method removes the first element of the array
# returns the removed element
# shift mutates the original array
# shift receives the number of elements to remove as an argument
numbers.shift(2)
p numbers

# unshift method adds an element to the beginning of the array
# unshift mutates the original array
# unshift receives one or more arguments
numbers.unshift(1, 2, 3)
p numbers
