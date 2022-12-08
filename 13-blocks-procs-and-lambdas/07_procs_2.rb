def greeter
    puts "I'm inside the greeter method!"
    yield if block_given?
end

phrase = proc { puts 'Inside the proc!' }

greeter(&phrase)

puts

5.times(&phrase)

puts

# .call is used to execute a proc
phrase.call
