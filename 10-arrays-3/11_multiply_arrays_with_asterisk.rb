# typed: strict

require 'sorbet-runtime'

# Multiply arrays with asterisk
module SampleMethod
    extend T::Sig

    numbers = [1, 2, 3, 4, 5]

    p 3 * 2 # 6
    p 'a' * 3 # "aaa"
    p [1, 2, 3] * 3 # [1, 2, 3, 1, 2, 3, 1, 2, 3]
    puts

    sig { params(array: T::Array[T.untyped], number: Integer).returns(T::Array[T.untyped]) }
    def self.custom_multiply(array, number)
        result = []
        number.times { result << array }
        result.flatten
    end

    p custom_multiply(numbers, 3)
end
