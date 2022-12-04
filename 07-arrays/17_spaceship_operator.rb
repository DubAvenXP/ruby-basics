# typed: false
# Spaceship operator returns -1, 0, or 1 depending on the comparison
# 0 means the two arrays are equal
# -1 means the first array or element is less than the second array
# 1 means the first array  or element is greater than the second array

p 5 <=> 10 # -1
p 10 <=> 5 # 1
p 5 <=> 5 # 0
puts
p [1, 2, 3] <=> [1, 2, 3] # 0
p [1, 2, 3] <=> [1, 2, 4] # -1
p [1, 2, 3] <=> [1, 2, 2] # 1
puts
p 5 <=> 'hello' # 

# this operator is helpful when sorting arrays
