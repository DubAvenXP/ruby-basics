# typed: strict

require 'sorbet-runtime'

module FetchMethod
    extend T::Sig

    menu = {
        burger: 3.99,
        taco: 5.96,
        chips: 0.5
    }

    p menu[:burger]
    p menu[:salad]
    p menu.fetch(:burger)
    p menu.fetch(:burger)
    # p menu.fetch(:salad) # error
    p menu.fetch(:salad, nil)
    p menu.fetch(:salad, 'Not found')
end
