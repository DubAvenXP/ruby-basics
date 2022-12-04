# typed: strict
# Fetch method is used to get the value of an element in an array

fruits = %w[apple orange pear grape]

p fruits.fetch(0) # "apple"
p fruits.fetch(1) # "orange"
p fruits.fetch(100, 'Not found') # "Not found"
