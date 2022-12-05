# typed: strict

require 'sorbet-runtime'

# uniq method
# returns a new array with duplicate values removed
module UniqMethod
    extend T::Sig

    numbers = [1, 1, 2, 3, 3, 3, 4, 5, 5, 5, 5, 6, 6]

    # uniq does not mutate the caller
    p numbers.uniq # [1, 2, 3, 4, 5, 6]

    # uniq! mutates the caller
    numbers.uniq!
    p numbers # [1, 2, 3, 4, 5, 6]
end
