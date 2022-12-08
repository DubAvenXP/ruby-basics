birthday = Time.new(1990, 4, 12)
summer = Time.new(1990, 6, 21)
independence_day = Time.new(1990, 7, 4)
winter = Time.new(1990, 12, 21)

puts birthday < summer # true
puts independence_day > winter # false
puts birthday == Time.new(1990, 4, 12) # true
puts birthday == Time.new(1990, 4, 12, 1) # false
puts
puts
puts independence_day.between?(birthday, winter) # true
