# typed: strict
nums = 1..5
nums1 = 1...5 # not including 5
nums2 = 1..100 # not including 5

p nums.first
p nums.last
p nums.class # Range class

p (1..10).first(3) # 1, 2, 3   # first 3 numbers
puts nums2.size # 5
