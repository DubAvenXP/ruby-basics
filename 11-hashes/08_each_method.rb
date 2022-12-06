# typed: strict

require 'sorbet-runtime'

# Each Method
# Each method iterates over each key-value pair in the hash
module EachMethod
    extend T::Sig

    capitals = {
        alabama: 'Montgomery',
        alaska: 'Juneau',
        arizona: 'Phoenix',
        arkansas: 'Little Rock',
        california: 'Sacramento'
    }

    capitals.each do |state, capital|
        puts
        puts 'Querying hash...'
        puts "#{state.class} - #{capital.class}"
        puts "The capital of #{state} is #{capital}"
    end

    puts ' * - * -' * 10

    capitals.each do |key_value_array|
        puts
        puts 'Querying hash...'
        p key_value_array
        p "key: #{key_value_array[0]}"
        p "value: #{key_value_array[1]}"
    end
end
