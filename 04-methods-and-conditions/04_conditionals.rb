color = 'Black'

if color == 'Red'
    puts 'Red is rad!'
elsif color == 'Green'
    puts 'Green is great!'
else
    puts 'I don\'t know that color!'
end

def odd_or_even(number)
    if number.odd?
        'That number is odd.' # implicit return
    else
        'That number is even.' # implicit return
    end
end

p odd_or_even(2)

# and &&, or || operators

name = 'Fisher'
my_boolean_value = true
is_adult = false

puts 'Both sides are true' if name && my_boolean_value

puts 'At least one side is true' if name || is_adult
