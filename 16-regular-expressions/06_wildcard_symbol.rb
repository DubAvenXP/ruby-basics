phrase = 'The Ruby Programming Language version 2.3.3 is amazing and awe-inspiring.'

puts phrase.scan(/a.e/) # gets all the matches of a.e in the string, . is a wildcard symbol
puts phrase.scan(/.ng/) # get all the matches of .ng in the string (_ ng)
puts phrase.scan(/\d.\d.\d/) # get all the matches of \d.\d.\d in the string (2.3.3)
