numbers = [7, 9, 13, 25, 18]

p numbers

# pop method removes the last element of the array
# pop mutates the original array
# pop receives the number of elements to remove as an argument
removed_number = numbers.pop
p "#{removed_number}  is the removed number"
p numbers

numbers.pop(2) # removes the last two elements
p numbers

numbers.pop(100) # removes all elements
p numbers
