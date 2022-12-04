# typed: strict
name = 'Alejandro Dubon'

# include? returns true if the string contains the substring
# include? is case sensitive

p name.include?('Alejandro') # true
p name.include?('Ale') # true
p name.include?('Alejand') # true
p name.include?('Hola') # false
p name.include?('N') # true
