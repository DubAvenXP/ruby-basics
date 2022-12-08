birthday = Time.new(1999, 11, 22, 19, 59, 59)

p birthday.monday?
p birthday.tuesday?
p birthday.wednesday?
p birthday.thursday?
p birthday.friday?
p birthday.saturday?
p birthday.sunday?

# dst? - Daylight Savings Time is a time change that occurs twice a year in the United States.
p birthday.dst? # Daylight Savings Time
