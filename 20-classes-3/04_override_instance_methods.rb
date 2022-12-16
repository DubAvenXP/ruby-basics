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

    def move
        puts 'Running like a dog'
    end
end

my_cat = Cat.new
my_dog = Dog.new
my_dog.move # => Running like a dog
my_cat.move # => Moving
