# typed: strict

require 'sorbet-runtime'

# Key? and value? methods
# key? method returns true if the given key is present in the hash
# value? method returns true if the given value is present in the hash
module KeyAndValueMethods
    extend T::Sig

    cars = {
        toyota: 'Corolla',
        honda: 'Civic',
        ford: 'Mustang',
        chevrolet: 'Camaro',
        dodge: 'Challenger'
    }

    p cars.key?(:toyota) # true
    p cars.key?(:tesla) # false

    p cars.value?('Corolla') # true
    p cars.value?('Model 3') # false

    # old syntax
    p cars.has_key?(:toyota) # true
    p cars.has_key?(:tesla) # false

    p cars.has_value?('Corolla') # true
    p cars.has_value?('Model 3') # false
end
