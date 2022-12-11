# Prepend and include are two Ruby methods used to add functionality to a class or module.

# The difference between the two methods is that prepend adds functionality
# to the top of the class's inheritance hierarchy, while include adds functionality
# to the bottom of the hierarchy. This means that prepend will take precedence over
# methods included with the include, while methods included with the include will
# take precedence over prepended methods.

# Purchaseable module
module Purchaseable
    def purchase(item)
        "#{item} has been purchased!"
    end
end

class Bookstore
    prepend Purchaseable
end

bn = Bookstore.new
# p Bookstore.ancestors # [Bookstore, Purchaseable, Object, Kernel, BasicObject] # include
p Bookstore.ancestors # [Purchaseable, Bookstore, Object, Kernel, BasicObject] # prepend
puts bn.purchase('Atlas Shrugged') # Atlas Shrugged has been purchased!
