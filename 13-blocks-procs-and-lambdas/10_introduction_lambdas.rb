squares = proc { |x| x**2 }
squares_lambda = ->(x) { x**2 }

some_proc = proc { |name, age| "Your name is #{name} and you are #{age} years old." }
some_lambda = ->(name, age) { "Your name is #{name} and you are #{age} years old." }

p [1, 2, 3].map(&squares)
p squares.call(5)

puts

p [1, 2, 3].map(&squares_lambda)
p squares_lambda.call(5)

puts
p some_proc.call('John', 25)
p some_proc.call('John') # age is nil
p some_proc.call # age and name are nil
puts
p some_lambda.call('John', 25)
# p some_lambda.call('John') # ArgumentError: wrong number of arguments (given 1, expected 2)
# p some_lambda.call # ArgumentError: wrong number of arguments (given 0, expected 2)

def diet_lambda
    status = -> { return 'You gave in' }
    status.call
    'You completed the diet!'
end

# returns the last line of the method
p diet_lambda # "You completed the diet!"

def diet_proc
    status = proc { return 'You gave in' } # this return will exit the method
    status.call
    'You completed the diet!'
end

# returns the value of the proc
p diet_proc # "You gave in"
