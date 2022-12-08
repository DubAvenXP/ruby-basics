# scan mehtod finds all the matches of a pattern in a string and returns an array of the matches

voicemail = 'I can be reached at 555-123-4567 or regexman@example.com'

p voicemail.scan(/e/) # array of all the e's in the string
p voicemail.scan(/e/).length # number of e's in the string

p voicemail.scan(/re/) # array of all the re's in the string
p voicemail.scan(/[re]/) # array of all the r's and e's in the string
p voicemail.scan(/[Rre]/) # array of all the R's, r's and e's in the string
