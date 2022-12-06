# typed: strict

require 'sorbet-runtime'

# Merge method
# merges two hashes together
module MergeMethod
    extend T::Sig

    market = {
        apple: 1.2,
        pear: 0.95,
        peach: 3.2,
        milk: 2.5
    }

    kitchen = {
        bread: 1.5,
        cheese: 3.2,
        milk: 1.5
    }

    # merge does not mutate the caller
    p kitchen.merge(market) # { bread: 1.5, cheese: 3.2, milk: 2.5, apple: 1.2, pear: 0.95, peach: 3.2 }
    p kitchen

    puts

    kitchen.merge!(market)
    p kitchen # { bread: 1.5, cheese: 3.2, milk: 2.5, apple: 1.2, pear: 0.95, peach: 3.2 }
end
