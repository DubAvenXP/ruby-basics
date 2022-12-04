# typed: strict
y = nil
p y

y ||= 5
p y

greeting = 'Hello'
extraction = 100
letter = greeting[extraction]
p letter
letter ||= 'Not found'
p letter
