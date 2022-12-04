# typed: strict
users = [
    ['Bob', 19, 'Male'],
    ['Susan', 22, 'Female'],
    ['Robert', 25, 'Male'],
    ['Jean', 30, 'Female']
]

# this is a way to unpack the array
# it's similar to destructuring in JS
bob, susan, robert = users

p bob
p susan
p robert
