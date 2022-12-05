# typed: strict

require 'sorbet-runtime'

# find and detect methods
# find returns the first element that passes the condition
# detect returns the first element that passes the condition
module FindAndDetectMethods
    extend T::Sig

    words = %w[dictionary refrigerator platypus microwave]

    # find returns the first element that passes the condition
    selected_word = words.find { |word| word.length > 8 }

    p selected_word

    # find the last element that passes the condition
    selected_word = words.reverse.find { |word| word.length > 8 }

    p selected_word

    lottery = [4, 8, 15, 16, 23, 42]

    result = lottery.find(&:odd?)

    p result
end
