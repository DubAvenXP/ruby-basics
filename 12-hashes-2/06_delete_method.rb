# typed: strict

require 'sorbet-runtime'

# Delete method
# deletes a key-value pair from a hash
module DeleteMethod
    extend T::Sig

    fruit_prices = {
        apple: 1.2,
        pear: 0.95,
        peach: 3.2,
        banana: 0.5
    }

    p fruit_prices

    # delete does mutate the caller
    deleted_element = fruit_prices.delete(:apple) # 1.2 # returns the value of the deleted key-value pairs

    p deleted_element # 1.2

    p fruit_prices
end
