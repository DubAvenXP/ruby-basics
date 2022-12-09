p 5.class
p 5.class.superclass
p 5.class.superclass.superclass
p 5.class.superclass.superclass.superclass
puts
p 5.class.ancestors
p 3.14.class.ancestors
p 'hello'.class.ancestors
p [1, 2, 3].class.ancestors
p true.class.ancestors
p false.class.ancestors
p nil.class.ancestors
p (0..9).class.ancestors
p (0...9).class.ancestors
p(/abc/.class.ancestors)
p Time.new.class.ancestors
p proc {}.class.ancestors
p -> {}.class.ancestors
p method(:puts).class.ancestors

# Fixnum was deprecated in Ruby 2.4.0 and fixnum and bignum were merged into Integer
