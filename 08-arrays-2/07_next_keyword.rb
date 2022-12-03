numbers = [1, 2, 3, 4, 5, nil, 6, 7, 8, nil, [], 9, 'ten', 10, false]

numbers.each do |number|
    # break if number.nil?
    next if number.nil? # skip to the next iteration of the loop

    puts "The square of #{number} is #{number**2}"
end
