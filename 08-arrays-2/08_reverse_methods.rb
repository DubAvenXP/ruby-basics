numbers = (1..10).to_a
fruits = %w[Apple Orange Grape Banana]

# reverse method returns a new array with the elements in reverse order
# reverse method does not mutate the caller
p numbers
puts

p numbers.reverse
p fruits.reverse

puts

# reverse! method mutates the caller
numbers.reverse!
p numbers
