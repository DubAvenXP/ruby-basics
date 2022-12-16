# Inheritance in Ruby is a way of organizing and sharing
# code between classes. It is a way of reusing code to avoid
# repetition. When one class inherits from another, it inherits
# all its methods and variables.

# Example:
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

my_cat = Cat.new
my_cat.move # => Moving
my_cat.meow # => Miau

# Use case:

# Suppose we are creating a social networking application.
# We can create a base class called User that contains methods and
# basic variables like names, email addresses, etc.
# Then, we can create subclasses like Administrator, Moderator, and Normal User.
# Each subclass will inherit all methods and variables from the User class,
# but it will also have specific methods and variables for each type of user.
