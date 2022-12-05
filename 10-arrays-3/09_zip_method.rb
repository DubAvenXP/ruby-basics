# typed: strict

require 'sorbet-runtime'

# Zip method
# returns a new array of arrays, where each array contains the elements from
module ZipMethod
    extend T::Sig

    names = %w[Bob Joe Steve Janice Susan Helen]
    registrations = [true, false, true, true, false, true]

    # zip does not mutate the caller
    p names.zip(registrations) # [["Bob", true], ["Joe", false], ["Steve", true], ["Janice", true], ["Susan", false], ["Helen", true]]

    p names
    p registrations

    p [1, 2, 3].zip(%w[a b c], [true, false, true]) # [[1, "a", true], [2, "b", false], [3, "c", true]]
end
