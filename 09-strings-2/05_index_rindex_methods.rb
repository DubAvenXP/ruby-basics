# typed: strict

require 'sorbet-runtime'

# Index and Rindex Methods
# Index is used to find the index of the first occurrence of a substring in a string.
# Rindex is used to find the index of the last occurrence of a substring in a string.
module CountMethod
    extend T::Sig

    fact = 'I am very handsome'
    p fact.index('h') # index
    p fact.index('am') # index
    p fact.index('am', 5) # the second argument is the starting position of the search
    p fact.index('w') # nil if not found

    puts

    # rindex return the last occurrence of the substring
    p fact.rindex('a') # rindex
    p fact.index('a') # index
end
