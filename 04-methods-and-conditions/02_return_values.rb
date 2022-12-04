# typed: true
def add_two_numbers(num1, num2)
    puts "OK, I'm solving your math problem!"
    num1 + num2
end

puts add_two_numbers(3, 5)
puts
puts add_two_numbers(8, 4)

# empty method return nil
def return_nil; end

p return_nil

def return_string
    'This is a string that gets returned'
end

def return_guess
    puts 'What is your guess?'
    gets.chomp.to_i
end

p return_guess
