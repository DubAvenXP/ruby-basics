# ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ *

cubes = proc { |number| number**3 }
# squares = proc { |number| number**2 }

to_euros = proc { |dollars| dollars * 0.95 }
to_quetzales = proc { |dollars| dollars * 7.7 }

is_old = proc do |age|
    age > 55
end

a = (1..5).to_a
b = (6..10).to_a
c = (11..15).to_a

currencies = [10, 20, 30, 40, 50]

ages = [10, 60, 83, 30, 43, 25]

# this is inefficient
# a_cubes = a.map { |n| n**3 }
# b_cubes = b.map { |n| n**3 }
# c_cubes = c.map { |n| n**3 }

# p a_cubes
# p b_cubes
# p c_cubes

# a proc is an object that contains a block of code

a_cubes, b_cubes, c_cubes = [a, b, c].map { |array| array.map(&cubes) }

p a_cubes
p b_cubes
p c_cubes

puts
puts
puts 'Currencies:'
p currencies
p currencies.map(&to_euros)
p currencies.map(&to_quetzales)
puts
puts
p ages.select(&is_old)
p ages.reject(&is_old)
