puts "Hi, whats your name?"

# gets method is used to get the input from the user
# chomp method is used to remove the new line character
name = gets.chomp

puts "Hi #{name}, whats your age?"

age = gets.chomp.to_i

puts "next year you will be #{age + 1} years old"

