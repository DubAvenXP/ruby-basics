# typed: strict

require 'sorbet-runtime'

# Delete Method
# Is used to remove all characters from a string that are present in the given argument.
module DeleteMethod
    extend T::Sig

    sentence = 'Hello, world!'

    p sentence # 'Hello, world!'

    p sentence.delete('l') # 'Heo, word!' # this not mutates the original string

    p sentence.delete('l!') # 'Heo, word' # this not mutates the original string

    sentence.delete!('l!') # this mutates the original string

    p sentence # 'Heo, word'
end
