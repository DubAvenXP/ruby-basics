# typed: strict
# a bang method is a method that mutates the caller

word = 'hello'

# capitalize is a bang method
word.capitalize!

p word # "Hello"

# downcase is a bang method
word.downcase!

p word # "hello"

# upcase is a bang method
word.upcase!

p word # "HELLO"

# reverse is a bang method
word.reverse!.downcase!

p word # "OLLEH"
