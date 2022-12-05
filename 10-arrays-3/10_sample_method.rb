# typed: strict

require 'sorbet-runtime'

# Sample method
# returns a random element from the array
module SampleMethod
    extend T::Sig

    flavors = %w[Chocolate Vanilla Strawberry]

    p flavors.sample # random element from the array
    p flavors.sample(2) # random 2 elements from the array
    # p flavors.sample(n) # random n elements from the array
end
