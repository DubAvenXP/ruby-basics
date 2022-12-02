numbers = [0, 2, 4, 8, 10, 12, 14]

p numbers.slice(3) # 8
p numbers.slice(100) # nil
p numbers.slice(2, 3) # extract 3 elements starting at index 2
p numbers.slice(4..6) # start at index 4 and go up to index 6
