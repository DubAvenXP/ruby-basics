# typed: strict

require 'sorbet-runtime'

# Clear Method
# Is used to remove all characters from a string.
module ClearMethod
    extend T::Sig

    sentence = 'bla bla bla bla bla bla bla'

    p sentence # 'bla bla bla bla bla bla bla'

    sentence.clear # this mutates the original string

    p sentence # ''
end
