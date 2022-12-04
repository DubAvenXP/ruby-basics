# typed: strict
# frozen_string_literal: true

require 'sorbet-runtime'

# Each char
# each_char method is used to iterate over each character in a string.
module IterateOverCharacters
    extend T::Sig

    sentence = 'Hi, my name name is Tom'
    name = T.let('Tom', String)

    # iterate over each character
    sentence.each_char { |char| puts char }

    p name.chars # ["T", "o", "m"]

    # each_char combines the chars and each methods to iterate over each character
end
