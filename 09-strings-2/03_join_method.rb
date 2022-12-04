# typed: strict

require 'sorbet-runtime'

# Join Method
# Is used to join the elements of an array together into a single string.
module JoinMethod
    extend T::Sig

    names = T.let(%w[Tom Jerry Spike], T::Array[String])
    p names.join(', ') # "Tom, Jerry, Spike"

    sig { params(array: T::Array[String], delimiter: String).returns(String) }
    def self.custom_join(array, delimiter)
        result = ''
        array.each_with_index do |word, i|
            if array.length - 1 == i
                result << word
                break
            end
            result << word << delimiter
        end

        result
    end

    p custom_join(names, ',') # "Tom, Jerry, Spike"
end
