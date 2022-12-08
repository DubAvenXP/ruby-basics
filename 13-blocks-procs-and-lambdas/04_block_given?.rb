def pass_control_on_condition
    puts 'Inside the method'
    yield if block_given?
    puts 'Back inside the method'
end

pass_control_on_condition { puts 'Hello from the block' }

puts

pass_control_on_condition
