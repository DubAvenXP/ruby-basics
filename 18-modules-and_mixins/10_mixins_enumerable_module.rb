# This class defines a convenience store.
# Includes the Enumerable module, which allows you to use methods like .each, .max, .min, .sort, etc.
# Define the following methods:
# initialize, which initializes the instance of the class, and defines a @snacks instance variable as an empty array.
# add_snack, which adds a new snack to snacks
# each, which iterates over snacks and executes the given block
class ConvenienceStore
    include Enumerable
    attr_reader :snacks

    def initialize
        @snacks = []
    end

    def add_snack(snack)
        snacks << snack
    end

    def each(&block)
        snacks.each(&block)
    end
end

bodega = ConvenienceStore.new
bodega.add_snack('Doritos')
bodega.add_snack('Slim Jims')
bodega.add_snack('Snickers')
bodega.each { |snack| puts "#{snack} is delicious!" }
p(bodega.any? { |snack| snack.length > 8 }) # => true
p(bodega.map(&:upcase)) # => ["DORITOS", "SLIM JIMS", "SNICKERS"]
