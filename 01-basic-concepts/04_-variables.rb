# typed: strict
# a variable is a name for a value
# and it is a space in memory
name = 'John'
last_name = 'Doe'
handsome = true
person = { name: 'John', last_name: 'Doe', handsome: true }

puts name

# we can reassign a variable
name = 'Jane'
person[:name] = 'Jane'
