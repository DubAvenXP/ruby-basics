sales = 'I bought 9 apples, 25 bananas, and 4 oranges at the store.'
puts sales.scan(/[^aeiouAEIOU,\s\d.]/) # gets all the non-vowel, non-comma, non-whitespace, non-digit, non-period characters
