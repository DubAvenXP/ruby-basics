# typed: strict
# frozen_string_literal: true

# Count down from 5 to 1
5.downto(1) do |i|
    puts i
end

5.downto(1) { |i| puts i }

# Count up from 10 to 15
10.upto(15) do |i|
    puts i
end

10.upto(15) { |i| puts i }
