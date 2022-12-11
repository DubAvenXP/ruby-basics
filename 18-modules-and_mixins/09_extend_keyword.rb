# The extend keyword is used to extend a Ruby module
# in a particular class. This means that the methods
# defined in the module become instance methods of the
# class to which it extends. This allows developers to
# reuse functionality and methods between different
# classes without having to define methods in each class.

module Announcer
    def who_am_i
        "The name of this class is #{self}"
    end
end

class Dog
    extend Announcer
end

class Cat
    extend Announcer
end

# watson = Dog.new
# p watson.who_am_i # who_am_i is an instance method, so it can't be called on a class

p Dog.who_am_i # The name of this class is Dog
p Cat.who_am_i # The name of this class is Cat
