poem = '99 bottles of beer on the wall, 99 bottles of beer.'

# d+ is a shortcut for [0-9]+ - one or more digits

p poem.scan(/\d+/) # array of all the digits in the string
p poem.scan(/\A\d+/) # array of all the digits in the string that are at the beginning of the string

# \z is the end of the string anchor
p poem.scan(/eer\z/) # array of all the matches of eer at the end of the string
