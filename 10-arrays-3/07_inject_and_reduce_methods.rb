# typed: strict

require 'sorbet-runtime'

# inject and reduce methods
# inject returns a single value after iterating through the array
# reduce returns a single value after iterating through the array
# reduce and inject are the same method
module InjectAndReduceMethods
    extend T::Sig

    animals_weight = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

    total_weight = animals_weight.inject(0) do |sum, weight|
        sum + weight
    end

    p total_weight # 55

    total_weight = animals_weight.reduce(0) do |sum, weight|
        sum + weight
    end

    p total_weight # 55

    total_weight = animals_weight.reduce(0) { |sum, weight| sum + weight } # shorthand for the above

    p total_weight # 55

    total_weight = animals_weight.reduce(0, :+) # shorthand for the above

    p total_weight # 55
end
