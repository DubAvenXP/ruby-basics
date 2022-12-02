numbers = [1, 2, 3, 4, 5]

# first method returns the first element in the array
p numbers.first # 1 (the first element in the array)
p numbers.first(3) # get the first 3 elements in the array (returns an array)

# last method returns the last element in the array
p numbers.last # 5 (returns the last element in the array)
p numbers.last(2) # get the last 2 elements in the array (returns an array)

# returns the first element in the array
def custom_first(arr, num = 0)
    return arr[0] if num.zero?

    arr[0, num]
end

# returns the last element in the array
def custom_last(arr, num = 0)
    return arr[-1] if num.zero?

    arr[-num..] # arr[-num..-1]
end

puts

puts 'custom_first method'
p custom_first(numbers) # 1
p custom_first(numbers, 3) # [1, 2, 3]

puts

puts 'custom_last method'
p custom_last(numbers) # 5
p custom_last(numbers, 2) # [4, 5]
