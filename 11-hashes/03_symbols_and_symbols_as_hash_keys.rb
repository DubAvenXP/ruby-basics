# typed: strict

require 'sorbet-runtime'

# Symbols are immutable strings
# because they are not mutable, they are more efficient than strings and they carry a lot less memory
module SymbolsAndSymbolsAsHashKeys
    extend T::Sig

    p :name
    # 79 methods
    # p :name.methods # returns an array of all the methods available to the symbol
    p :name.class

    p 'name'
    # 170 methods
    # p 'name'.methods # returns an array of all the methods available to the string
    p 'name'.class

    # syntax 1
    # person = {
    #     :name => 'John',
    #     :age => 25,
    #     :handsome => true,
    #     :languages => ['Ruby', 'Python', 'JavaScript']
    # }

    # syntax 2
    person = {
        name: 'John',
        age: 25,
        handsome: true,
        languages: %w[Ruby Python JavaScript]
    }

    p person[:name]
    p person[:age]
    p person[:handsome]
    p person[:languages]
end
