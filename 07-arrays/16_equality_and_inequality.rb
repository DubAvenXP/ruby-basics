# typed: strict
a = [1, 2, 3]
b = [1, 2, 3]
c = [3, 2, 1]
d = [1, 2, 3, 4]

products_1 = %w[paper pencil pen stapler]
products_2 = %w[paper pencil pen Stapler]

p a == b
p a == c
p a != d

p products_1 == products_2
