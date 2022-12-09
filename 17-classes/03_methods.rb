# methods method is defined in the Kernel module
# and is available to all objects

p 5.methods

puts

p 3.14.methods

puts

p 'hello'.methods

puts

p [1, 2, 3].methods

puts

p true.methods

puts 'shared methods between array and hash:'

puts [].methods.sort & {}.methods.sort

puts 'Unique methods for array:'

puts [].methods.sort - {}.methods.sort
