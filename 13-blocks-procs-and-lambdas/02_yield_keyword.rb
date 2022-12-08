def pass_control
    puts 'Inside the method'
    puts 'Yielding to the block...'
    yield # Pass control from method to block
    puts 'Back inside the method'
end

def who_am_i
    adjective = yield
    puts "I am very #{adjective}"
end

def multiple_pass
    puts 'Inside the method'
    yield
    puts 'Back inside the method'
    yield
end

# ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ *

# pass_control { puts 'Hello from the block' }

# puts
# puts

# pass_control do
#     puts 'Hello from the block'
#     puts 'I can have multiple lines'
# end

# ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ *

# who_am_i { 'handsome' } # block implicitly returns the last line

# puts
# puts

# who_am_i do
#     adjective = 'handsome'
#     puts 'I am inside the block'
#     adjective
# end

# ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ *

result = multiple_pass { 'Hello world' }
puts result
