# typed: strict
colors = %w[red orange yellow green blue indigo violet]

# index method returns the index of the element if it is present in the array
p colors.index('red')
p colors.index('pink') # returns nil if the element is not present in the array

# find_index method returns the index of the element if it is present in the array
p colors.find_index('red')
p colors.find_index('blue')
p colors.find_index('pink') # returns nil if the element is not present in the array
