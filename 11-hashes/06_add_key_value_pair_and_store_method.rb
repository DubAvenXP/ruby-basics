# typed: strict

require 'sorbet-runtime'

# Ways to add key-value pairs to a hash
module AddKeyValuePair
    extend T::Sig

    menu = {
        burger: 3.99,
        taco: 5.96,
        chips: 0.5
    }

    # this adds a new key-value pair to the hash
    menu[:sandwich] = 8.99

    # this updates the value of an existing key
    menu[:taco] = 4.99

    # Store method
    # this adds a new key-value pair to the hash
    menu.store(:sushi, 24.99)

    puts
    p menu
end
