# A mixin is an object-oriented programming feature that allows programmers
# to reuse code in multiple independent classes. Mixins allow you to add
# behavior to a class without having to inherit from a superclass. In Ruby,
# mixins are implemented using the include function.

# This class defines the information of an Olympic Games medal.
# The comparable module is included to allow the comparison of medals.
class OlympicMedal
    include Comparable # The comparable module is included to allow comparison between medals
    attr_reader :type

    MEDAL_VALUES = { 'Gold' => 3, 'Silver' => 2, 'Bronze' => 1 }.freeze # A hash with the values of each medal

    # The constructor of the class
    def initialize(type, weight)
        @type = type # The type of medal (Gold, Silver, Bronze)
        @weight = weight # The weight of the medal
    end

    # The <=> method is the one that allows you to compare objects of this class.
    # First retrieve the numeric value for each medal type from the hash,
    # then the values of each medal are compared.
    def <=>(other)
        if MEDAL_VALUES[type] < MEDAL_VALUES[other.type]
            -1
        elsif MEDAL_VALUES[type] == MEDAL_VALUES[other.type]
            0
        else
            1
        end
    end
end

bronze = OlympicMedal.new('Bronze', 5)
silver = OlympicMedal.new('Silver', 10)
gold = OlympicMedal.new('Gold', 3)

puts bronze > silver # false
puts silver >= gold # true
puts gold > silver && gold >= bronze # true
puts silver.between?(bronze, gold) # true
# puts silver >= silver # true
# puts gold == gold # true
