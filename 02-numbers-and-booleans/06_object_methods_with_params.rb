# frozen_string_literal: true

# object methods with parameters

p 3.between?(1, 5)

p 'Hello'.include?('lo')

p 'abc'.between?('aaa', 'aab')

# between? method with strings works with alphabetical order
p 'cat'.between?('ant', 'dog')

p 'Ale'.between?('Ala', 'Alu')

p 20.5.between?(10, 30.5)
