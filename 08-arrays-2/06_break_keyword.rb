# typed: strict
prizes = %w[Pyrite Pyrite Pyrite Pyrite Gold Pyrite Pyrite Pyrite]

prizes.each do |prize|
    if prize == 'Gold'
        puts 'Yay! Found gold!'
        break # this will exit the loop
    else
        puts "#{prize} is not gold."
    end
end

puts
puts "Let's use while loop to find gold"

i = 0
while i < prizes.length
    current = prizes[i]
    if current == 'Gold'
        puts 'Yay! Found gold!'
        break
    else
        puts "#{current} is not gold."
    end
    i += 1
end
