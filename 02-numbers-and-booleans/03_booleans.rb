# typed: strict
p 5 <= 0
p 5 < 10

5.times do |index|
    p index
    p index.even?
    p index.odd?
end

puts 'Hello'.class
puts 'Hello'.methods
