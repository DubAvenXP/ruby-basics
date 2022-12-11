# Square module
module Square
    def self.area(side)
        side * side
    end
end

# Rectangule module
module Rectangule
    def self.area(length, width)
        length * width
    end
end

# Circle module
module Circle
    PI = 3.14159
    def self.area(radius)
        PI * radius * radius
    end
end

# puts "Area of a square with side 5 is #{Square.area(5)}"
# puts "Area of a rectangle with length 5 and width 10 is #{Rectangule.area(5, 10)}"
# puts "Area of a circle with radius 5 is #{Circle.area(5)}"
