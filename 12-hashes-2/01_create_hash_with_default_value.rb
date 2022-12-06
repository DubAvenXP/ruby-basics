# typed: strict

require 'sorbet-runtime'

module CreateHashWithDefaultValue
    extend T::Sig

    fruit_prices = Hash.new(0)
    product_prices = Hash.new('Not Available')

    fruit_prices[:banana] = 1.05
    fruit_prices[:orange] = 2.10

    p fruit_prices[:steak] # 0
    p product_prices[:laptop] # "Not Available"

    fruit_prices.default = "We don't have that fruit"
    p fruit_prices[:steak] # "We don't have that fruit"
end
