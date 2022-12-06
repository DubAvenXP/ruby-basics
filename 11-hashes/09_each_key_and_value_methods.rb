# typed: strict

require 'sorbet-runtime'

# Each key and each value
# Each key method returns an array of all the keys in the hash
# Each value method returns an array of all the values in the hash
module EachKey
    extend T::Sig

    salaries = {
        director: 100_000,
        producer: 200_000,
        ceo: 300_000
    }

    salaries.each_key do |position|
        puts 'EMPLOYEE RECORD: -----'
        puts position
    end

    salaries.each_value do |salary|
        puts "The next employee earns this much: #{salary}"
    end
end
