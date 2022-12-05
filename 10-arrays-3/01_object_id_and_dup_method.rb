# typed: strict

a = [1, 2, 3]
# b = a # a and b are the same array because they have the same object ids

# dup method creates a new array with the same elements as the original array
b = a.dup # a and b are different arrays because they have different object ids

p a
p b

puts

p a.object_id
p b.object_id
p a.equal?(b)

puts

b << 4

p a
p b
