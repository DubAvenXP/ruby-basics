# each method is used to iterate over an array
# it is better to use the each method when you don't need the index

candies = ['Snickers', 'Milky Way', 'Kit Kat', 'Skittles']
fruits = %w[apple banana orange pear]

candies.each do |candy|
    puts "I love eating #{candy}!"
end

puts

# this syntax is better when you only have one line of code
fruits.each { |fruit| puts "I love eating #{fruit}!" }

# example 2

numbers = (1..10).to_a
even_numbers = []
odd_numbers = []
puts
p numbers

numbers.each { |number| number.even? ? even_numbers << number : odd_numbers << number }

puts
puts 'even_numbers'
p even_numbers
puts 'odd_numbers'
p odd_numbers
