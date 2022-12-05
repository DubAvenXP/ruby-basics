# typed: strict

require 'sorbet-runtime'

# Union method
# returns a new array by joining two arrays
module UnionMethod
    extend T::Sig

    numbers = [1, 2, 3]
    numbers2 = [3, 4, 5]

    # union omits duplicates

    p numbers | numbers2 # [1, 2, 3, 4, 5]

    # p [1, 1, 2, 2, 3, 3].|([3, 3, 4, 4, 5, 5]) # [1, 2, 3, 4, 5]
    p [1, 1, 2, 2, 3, 3] | [3, 3, 4, 4, 5, 5] # [1, 2, 3, 4, 5]
end
