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

p Cat.ancestors
p Cat.superclass
p Animal.ancestors
p Animal.superclass
p Dog.ancestors == Cat.ancestors
puts

puts Cat < Animal # => true
puts Cat < Object # => true
puts Animal < Object # => true
puts Dog < Animal # => true
puts Dog < Cat # => false
