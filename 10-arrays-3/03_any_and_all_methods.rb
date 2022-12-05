# typed: strict

require 'sorbet-runtime'

# Any and all methods
# Any returns true if any of the elements in the array pass the condition
# All returns true if all of the elements in the array pass the condition
module AnyAndAllMethods
    extend T::Sig

    numbers = [1, 3, 5, 7, 9]

    # numbers.any? { |number| number.even? }
    # numbers.any? do |number|
    #     number.even?
    # end
    p numbers.any?(&:even?)

    # numbers.all? { |number| number.odd? }
    # numbers.all? do |number|
    #     number.odd?
    # end
    p numbers.all?(&:odd?)
end
