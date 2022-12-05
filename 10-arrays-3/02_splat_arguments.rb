# typed: strict

require 'sorbet-runtime'

# Splat arguments
# Is used to pass multiple arguments to a method
module SplatArgs
    extend T::Sig

    sig { params(numbers: Integer).returns(Integer) }
    def self.sum(*numbers)
        numbers.sum
    end

    p sum(1, 2, 3, 4, 5) # 15s
end
