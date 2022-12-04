# typed: strict

require 'sorbet-runtime'

# Insert Method
# Is used to insert a substring into a string at a given index.
module CountMethod
    extend T::Sig

    typo = 'GeorgWashington'

    p typo

    # this mutates the original string
    typo.insert(5, 'e ') # insert a 'e ' after the index 5

    p typo

    typo.insert(-1, ' was the first president of the United States.') # insert a string at the end of the string

    p typo
end
