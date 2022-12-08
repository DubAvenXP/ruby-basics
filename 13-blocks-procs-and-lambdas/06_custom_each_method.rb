def custom_each(arr)
    i = 0
    while i < arr.length
        yield(arr[i])
        i += 1
    end
end

names = %w[David Trevor Sarah Mason]

custom_each(names) { |name| puts "The name is #{name}" }
