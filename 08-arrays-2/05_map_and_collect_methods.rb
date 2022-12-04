# typed: strict
numbers = (1..10).to_a
p numbers

# map method
# Map method is used to iterate over an array and return a new array with the results of the block.
powers_of_two = numbers.map { |number| number**2 }
p powers_of_two

# collect method
# Collect method is an alias for the map method
cubes = numbers.collect { |number| number**3 }
p cubes
