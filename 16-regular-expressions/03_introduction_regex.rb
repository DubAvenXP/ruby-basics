phrase = 'The Ruby Programming Language is amazing! .'

puts phrase =~ /T/ # 0
puts phrase =~ /R/ # 4
puts phrase =~ /m/ # 15
puts phrase =~ /!/ # 40
puts phrase =~ /\./ # 42
puts phrase =~ / / # 3 # whitespace

puts(//.class) # Regexp
