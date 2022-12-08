paragraph = 'This is a paragraph. It is made up of several sentences. Each sentence ends with a period. The paragraph has ten sentences.'

puts paragraph.scan(/\./) # gets all the matches of . in the string
puts paragraph.scan(/\d/) # gets all the digit characters
puts paragraph.scan(/\D/) # gets all the non-digit characters
puts paragraph.scan(/\s/) # gets all the whitespace characters
puts paragraph.scan(/\S/) # gets all the non-whitespace characters
