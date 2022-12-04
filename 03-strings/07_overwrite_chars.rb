# typed: strict
thing = 'rocket ship'
p thing

thing[0] = 'p'
p thing

thing[1] = 'a'
p thing

thing[9] = 'o'
p thing

fact = 'I love blueberry pie'
fact[7, 4] = 'rasp' # 7 is the starting index, 4 is the number of characters to overwrite

fact[2..5] = 'absolutely adore' # 2 is the starting index, 5 is the ending index
p fact
