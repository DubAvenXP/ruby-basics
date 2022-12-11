# Method lookup path
# The method lookup path is the order in which Ruby looks for a method in a class.
# For example, ruby looks at the last module included in the class first, then
# the next module included, and so on.
# If multiple modules include the same method, the last one included will be used.
# Ruby will throw an error if the method is not found in any of the modules included.

# Ruby's lookup path method is a method built into the Module
# class that is used to look up constants, methods, and instance
# variables within a program's modules and classes. The method is
# executed with the goal of finding the name of a constant within
# the ancestors of a given module. When a constant name is not found
# in a given module, the lookup path method will search the module's
# ancestors in a defined order. The method returns a list with all the
# ancestors of the module where the constant was found. If the constant
# is not found in any ancestors, the lookup path method returns nil.

# Purchaseable module
module Purchaseable
    # purchase will be injected into the class that includes this module
    def purchase(item)
        "#{item} has been purchased!"
    end

    def sell(item)
        "#{item} has been sold!"
    end
end

class Bookstore
    # The methods of the Purchaseable module will be injected into the Bookstore class
    # and can be overwritten by methods with the same name in the Bookstore class.
    include Purchaseable

    # overwrite the sell method of the Purchaseable module
    # hero we are not overwriting the purchase method
    # the lookup path will find the sell method in the Bookstore class
    # and then if sell is not found in the Bookstore class, it will look in the
    # ancestors of the Bookstore class, which is the Purchaseable module
    def sell(item)
        "This is from the Bookstore class: #{item} has been sold!"
    end
end

my_bookstore = Bookstore.new
puts my_bookstore.purchase('Atlas Shrugged') # Atlas Shrugged has been purchased!
puts my_bookstore.sell('Harry Potter') # Harry Potter has been sold!
