# typed: strict
# for loop
# Is a loop that iterates over a range of numbers
# In Ruby, the for loop is not used very often

numbers = (1..10).to_a
number = 0 # global variable

numbers.each { |number| print "#{number} - " } # block scope

puts "\nnumber is #{number}" # 0 (number has global scope)

for num in numbers
    print "#{num} - "
end

puts "\n#{num} num variable" # num variable used in the for loop has global scope
