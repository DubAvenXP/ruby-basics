# typed: strict

require 'sorbet-runtime'

# Squeeze Method
# Is used to remove all consecutive duplicate characters from a string.
module SqueezeMethod
    extend T::Sig

    sentence = 'Thhe   aardvark jummped  ovver the fence!'

    # this not mutates the original string
    sentence.squeeze # remove all consecutive duplicate characters

    sentence.squeeze! # this mutates the original string
    p sentence

    other_sentence = 'Thhe   aardvark jummped    ovver           the   fence!'
    other_sentence.squeeze!(' v') # remove all consecutive duplicate ' ' and 'v' of the given argument
    p other_sentence
end
