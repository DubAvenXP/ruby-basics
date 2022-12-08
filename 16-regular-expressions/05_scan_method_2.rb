# scan mehtod finds all the matches of a pattern in a string and returns an array of the matches

voicemail = 'I can be reached at 555-123-4567 or regexman@example.com'

p voicemail.scan(/d/) # array of all the d's in the string

p voicemail.scan(/\d+/) # array of all the digits in the string

p voicemail.scan(/\d+/) { |digit_match| puts digit_match.length } # prints the length of each digit match

# \d is a shortcut for [0-9] - any digit
# \d+ is a shortcut for [0-9]+ - one or more digits
