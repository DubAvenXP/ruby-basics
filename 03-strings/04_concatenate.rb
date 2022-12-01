# ways to concatenate strings

# 1. using the + operator
name = 'John' + ' ' + 'Doe'
puts name

# 2. using the << operator
name = 'John' + ' ' + 'Doe'
name << ' ' << 'Jr.'
puts name

# 3. using the concat method
name = 'John' + ' ' + 'Doe'
name.concat(' ').concat('Jr.')
puts name

# 4. using the + method
name = 'John' + ' ' + 'Doe'
name += ' Jr.'
puts name

# 5. prepend method (adds to the beginning of the string)
name = 'John' + ' ' + 'Doe'
name.prepend('Mr. ')
puts name
