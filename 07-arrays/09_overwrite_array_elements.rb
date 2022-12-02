fruits = %w[apple orange pear grape]
p fruits

fruits[0] = 'kiwi'
p fruits

fruits[-1] = 'banana'
p fruits

fruits[0, 2] = %w[watermelon mango] # replace 2 elements starting at index 0
p fruits

fruits[fruits.length] = 'strawberry' # add an element to the end of the array
p fruits

fruits[10] = 'blueberry' # add an element at index 10
p fruits # [watermelon, mango, pear, banana, strawberry, nil, nil, nil, nil, nil, blueberry]

fruits[0..2] = %w[apple orange pear] # replace 3 elements starting at index 0
p fruits

fruits[0..3] = ['grape'] # replace 4 elements starting at index 0
P fruits # the rest of the elements are removed because they are replaced by a single element
