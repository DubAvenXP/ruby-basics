# frozen_string_literal: true

# this syntax is recommended when you have a single line of code
10.times { puts 'Hello world!' }

10.times { |i| puts "3 x #{i} = #{3 * i}" }

# this syntax is recommended when you have multiple lines of code
5.times do |i|
    puts i
end

3.times do
    puts 'Hello world 2!'
end
