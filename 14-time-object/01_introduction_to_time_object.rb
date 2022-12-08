today = Time.new # current date and time

p today.class
p today

p Time.new(2021, 5, 25) # year, month, day
p Time.new(2021, 5, 25, 10, 30, 45) # year, month, day, hour, minute, second
p Time.new(2021, 5, 25, 10, 30, 45, '+05:00') # year, month, day, hour, minute, second, timezone
