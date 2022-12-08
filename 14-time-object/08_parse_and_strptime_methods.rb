require 'time'

puts Time.parse('2016-01-01')
puts Time.parse('2016-01-01').class
puts
puts Time.strptime('03-04-2000', '%m-%d-%Y')
puts Time.strptime('03-04-2000', '%d-%m-%Y')
