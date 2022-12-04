# typed: strict
things = ['a', 'b', 1, 2, 3, true, false, nil, 1, 2, true, false, nil]

# length method
# It returns the number of elements in the array
# It counts all elements including nil
# Length is the same as size
p things.length

# size method
# It returns the number of elements in the array
# Size is the same as length
# It counts all elements including nil
# Size is more efficient than length
p things.size

# count method
# It returns the number of elements in the array
# It counts all elements including nil
# It can also count the number of elements that match a condition
p things.count
p things.count(1) # count the number of times 1 appears in the array
p things.count(true) # count the number of times true appears in the array
p things.count(nil) # count the number of times nil appears in the array
