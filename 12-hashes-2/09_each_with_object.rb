# typed: strict

require 'sorbet-runtime'

# challenge
module ChallengeWordFrequency
    extend T::Sig

    sig { params(string: String).returns(T::Hash[String, Integer]) }
    def self.word_count(string)
        words = string.split(' ')
        words.each_with_object(Hash.new(0)) { |word, hash| hash[word] += 1 }
    end

    sentence = 'Once upon a time in a land far far away'
    p word_count(sentence)
end
