# typed: strict
# each_with_index
# the each_with_index method iterates over an array and returns the index of the current element

colors = %w[red green blue yellow]

colors.each_with_index do |color, index|
    puts "Moving on to index #{index}"
    puts "The current color is #{color}"
    puts
end
