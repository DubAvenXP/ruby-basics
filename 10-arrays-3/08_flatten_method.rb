# typed: strict

require 'sorbet-runtime'

# Flatten method
# returns a new array that is a one-dimensional flattening of self
module FlattenMethod
    extend T::Sig

    animals_weight = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [10]]

    # flatten does not mutate the caller
    p animals_weight.flatten # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

    p animals_weight # [[1, 2, 3], [4, 5, 6], [7, 8, 9], [10]]

    # flatten! mutates the caller
    animals_weight.flatten!

    p animals_weight # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
end
