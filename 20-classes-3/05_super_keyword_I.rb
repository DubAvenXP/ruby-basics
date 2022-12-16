# We create a base class called Animal that contains a method called move.
class Animal
    def initialize(name)
        @name = name
    end

    def move
        puts 'Moving'
    end
end

# Then, we create a subclass called Cat that inherits from the Animal class.
class Cat < Animal
    def initialize(name, breed)
        super(name)
        @breed = breed
    end

    def meow
        puts 'Miau'
    end

    def move
        super
        puts 'Running like a cat'
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

cat = Cat.new('Miau', 'Persian')
cat.move
