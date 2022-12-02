locations = %w[House Airport Bar]
p locations

# push method adds an element to the end of the array
# push mutates the original array
# push receives one or more arguments
# locations.push('Restaurant', 'Beach')
locations.push('Restaurant')
p locations

# unshift method adds an element to the beginning of the array
# unshift mutates the original array
locations.unshift('Beach')
p locations

# shovel operator adds an element to the end of the array
# shovel operator mutates the original array
locations << 'Mall' << 'School'
p locations

# insert method adds an element to the array at a given index
# insert mutates the original array
# insert receives two arguments: index and element
# elements can be more than one
# locations.insert(1, 'Cafe', 'Saloon', 'Stadium')
locations.insert(1, 'Hospital')
p locations
