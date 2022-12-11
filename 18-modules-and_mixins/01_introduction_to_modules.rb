# a module is a toolbox that can be used to store methods and constants
# modules create namespaces for methods and constants
# modules cannot be instantiated
# modules can be mixed into classes to add functionality

# sytax and style
# modules are named using UpperCamelCase
# Contants are named using SCREAMING_SNAKE_CASE
# access module methods using the dot operator
# access module constants using the double colon operator ::

# LengthConversions module
module LengthConversions
    WEBSITE = 'https://www.rubyguides.com'

    # self defines a module method
    def self.miles_to_feet(miles)
        miles * 5280
    end

    def self.miles_to_inches(miles)
        feet = miles_to_feet(miles)
        feet * 12
    end

    def self.miles_to_centimeters(miles)
        inches = miles_to_inches(miles)
        inches * 2.54
    end
end

puts LengthConversions::WEBSITE
puts LengthConversions.miles_to_feet(100)
puts LengthConversions.miles_to_inches(100)
