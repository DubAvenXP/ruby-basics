# typed: strict

require 'sorbet-runtime'

# compact method
# returns a new array with nil values removed
module CompactMethod
    extend T::Sig

    numbers = [1, 2, 3, nil, 4, 5, nil, 6, 7, nil, 8, 9, 10]

    # compact does not mutate the caller
    p numbers.compact # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    p numbers # [1, 2, 3, nil, 4, 5, nil, 6, 7, nil, 8, 9, 10]

    # compact! mutates the caller
    numbers.compact!
    p numbers # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
end
