# respond_to method is used to check if an object can respond to a method or not
# this method receives a symbol as an argument and returns true or false

num = 1000
name = 'Alejandro'

p num.respond_to?(:next)
p num.respond_to?(:upcase)

p name.respond_to?(:next)
p name.next
p name.respond_to?(:upcase)
