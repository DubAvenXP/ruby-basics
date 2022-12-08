phrase = 'The Ruby Programming Language is amazing!'

puts phrase.start_with?('The') # true
puts phrase.start_with?('the') # false - case sensitive
puts phrase.end_with?('!') # true
puts phrase.end_with?('amazing') # false - must match entire string
