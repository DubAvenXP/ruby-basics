# typed: strict

require 'sorbet-runtime'

# Length and Empty Methods
# Length method returns the number of elements in the hash
# Empty method returns true if the hash is empty, false otherwise
module LengthAndEmptyMethods
    extend T::Sig

    shopping_list = {
        bananas: 5,
        oranges: 10,
        carrots: 3,
        crackers: 5
    }

    vegan_shopping_list = {}

    p shopping_list.length # 4 # this return the number of key-value pairs in the hash
    p vegan_shopping_list.length # 0

    p shopping_list.empty? # false
    p vegan_shopping_list.empty? # true
end
