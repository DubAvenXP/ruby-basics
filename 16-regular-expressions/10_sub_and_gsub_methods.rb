puts 'Whimper'.sub('m', 's') # this will replace the first 'm' with an 's'
puts 'wordplay'.sub('w', 'sw') # this will replace the first 'w' with an 'sw'
puts 'wordplay'.sub('word', 'sword') # this will replace the first 'word' with an 'sword'

word = 'aspirin'
# this not mutate the original string
word.sub('in', 'ing') # this will replace the first 'in' with an 'ing'

# this will mutate the original string
word.sub!('in', 'ing') # this will replace the first 'in' with an 'ing' and mutate the original string

# gsub method
# it will replace all the occurences of the pattern with the replacement string

phone = '2004-959-559' # This is Phone Number
p phone.gsub('-', '') # This will remove all the dashes

phone = '(555)-555 1234'
p '(555)-555 1234'.gsub(/[-\s()]/, '') # This will remove all the dashes, spaces, parentheses
phone.gsub!(/[-\s()]/, '') # This will remove all the dashes, spaces, parentheses and mutate the original string
