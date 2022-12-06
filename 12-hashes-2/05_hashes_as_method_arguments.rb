# typed: strict

require 'sorbet-runtime'

# Hashes as method arguments
# hashes can be passed as arguments to methods
# hashes can be passed as keyword arguments to methods
module HashesAsMethodArguments
    extend T::Sig

    sig { params(price: Float, tip: Float, tax_rate: Float).returns(Float) }
    def self.calculate_total1(price, tip, tax_rate)
        price + tip + (price * tax_rate)
    end

    sig { params(info: { price: Float, tip: Float, tax_rate: Float }).returns(Float) }
    def self.calculate_total2(info)
        info[:price] + info[:tip] + (info[:price] * info[:tax_rate])
    end

    p calculate_total1(24.99, 0.18, 0.07) # 27.3543
    p calculate_total2(price: 24.99, tip: 0.18, tax_rate: 0.07) # 27.3543
    # p calculate_total2({ price: 24.99, tip: 0.18, tax_rate: 0.07 }) # 27.3543
    # p calculate_total2 price: 24.99, tip: 0.18, tax_rate: 0.07 # 27.3543
end
