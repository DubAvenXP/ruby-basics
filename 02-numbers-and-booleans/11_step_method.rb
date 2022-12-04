# typed: strict
# step method is used to iterate over a range of numbers by a given step size

0.step(100, 5) do |i|
    puts i
end

0.step(100, 5) { |i| puts i }
