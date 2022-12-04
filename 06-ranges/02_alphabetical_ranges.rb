# typed: strict
alphabet = 'a'..'z' # create a range of letters
alphabet_complete = 'A'..'z' # includes capital letters

puts alphabet.first(3)
p alphabet.first(3)

p alphabet_complete.size # .size not works in aplhabetical ranges

half_alphabet = 'a'..'m'
puts half_alphabet.include?('j') # true
puts half_alphabet.include?('z') # false

p half_alphabet === 'j' # true
p half_alphabet === 'z' # false
