# We create a base class called Animal that contains a method called move.
class Animal
    def move
        puts 'Moving'
    end
end

# Then, we create a subclass called Cat that inherits from the Animal class.
class Cat < Animal
    def meow
        puts 'Miau'
    end
end

class Dog < Animal
    def bark
        puts 'Woof'
    end
end

my_cat = Cat.new
my_dog = Dog.new

puts my_cat.is_a?(Cat) # => true
puts my_cat.is_a?(Animal) # => true
puts my_cat.is_a?(Dog) # => false
puts my_cat.is_a?(Object) # => true

puts my_dog.is_a?(Cat) # => false
puts my_dog.is_a?(Animal) # => true

puts
puts
puts

puts my_cat.instance_of?(Cat) # => true
puts my_cat.instance_of?(Animal) # => false
puts my_cat.instance_of?(Dog) # => false
puts my_cat.instance_of?(Object) # => false

# The difference between is_a? and instance_of? is that is_a? checks the inheritance hierarchy,
# while instance_of? checks the class of the object.
