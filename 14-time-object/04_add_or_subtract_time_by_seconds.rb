start_of_year = Time.new(2022, 1, 1)
p start_of_year
puts
p start_of_year + 60 # 60 seconds later
p start_of_year - 180 # 180 seconds earlier
puts
p start_of_year + (60 * 60) # 1 hour later
p start_of_year - (60 * 60) # 1 hour earlier
puts
p start_of_year + (60 * 60 * 24) # 1 day later
p start_of_year - (60 * 60 * 24) # 1 day earlier
puts
p start_of_year + (60 * 60 * 24 * 365) # 1 year later
p start_of_year - (60 * 60 * 24 * 365) # 1 year earlier

def find_day_of_year_by_number(number_day_of_year)
    current_date = Time.new(Time.now.year, 1, 1)
    one_day = 60 * 60 * 24
    current_date += one_day until current_date.yday == number_day_of_year
    current_date
end
puts
puts
puts 'Find day of year by number'
p find_day_of_year_by_number(100)
