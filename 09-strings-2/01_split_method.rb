# typed: strict
# frozen_string_literal: true

require 'sorbet-runtime'

# split method
# Divides str into substrings based on a delimiter, returning an array of these substrings.
module SplitMethod
    extend T::Sig

    sentence = 'Hi, my name name is Tom'

    new_sentence = sentence.split(' ')

    new_sentence.each { |word| puts word.length }

    sig { params(sentence: String).returns(T.nilable(String)) }
    def self.longest_word(sentence)
        words = sentence.split(' ')
        sorted_words = words.sort_by(&:length) # sort by length
        sorted_words.last
    end
end
