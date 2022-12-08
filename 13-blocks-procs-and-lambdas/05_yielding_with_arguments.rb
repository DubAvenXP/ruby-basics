def speak_the_truth
    yield('Bill', 'Gates') if block_given?
end

def speak_the_truth_with_args(first_name, last_name)
    yield(first_name, last_name) if block_given?
end

def number_evaluation(num1, num2, num3)
    puts 'Inside the method'
    yield(num1, num2, num3)
end

speak_the_truth { |first_name, last_name| puts "#{first_name} #{last_name} is a billionaire." }
speak_the_truth_with_args('Bill', 'Gates') do |first_name, last_name|
    puts "#{first_name} #{last_name} is a billionaire."
end

result = number_evaluation(1, 2, 3) { |num1, num2, num3| puts num1 * num2 * num3 }
p result
