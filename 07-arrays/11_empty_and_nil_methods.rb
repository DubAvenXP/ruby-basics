numbers = [1, 2, 3, 4, 5]
fruits = %w[apple orange pear grape]
things = []
letters = ('a'..'j').to_a # create an array of letters from a to j
character = letters[80]

# empty? method returns true if the array is empty
p numbers.empty? # false
p fruits.empty? # false
p things.empty? # true

puts

# nil? method returns true if something is nil

p numbers.nil? # false
p fruits.nil? # false
p things.nil? # false
p letters.nil? # false
p character.nil? # true
