story = 'Once upon a time in a land far, far away'

p story.length
puts
p story[4]
p story[4, 10] # 4 is the starting index, 10 is the number of characters to extract
p story[4..10] # 4 is the starting index, 10 is the ending index
puts
p story.slice(4) # same as story[4]
p story.slice(4, 10) # same as story[4, 10]
p story.slice(4..10) # same as story[4..10]
p story.slice(4...10) # extracts from 4 to 9, 10 is not included
puts
p story[100]
p story[100, 10]
puts
p story.slice(0, story.length) # last character
p story.slice(-10, 10) # last character
