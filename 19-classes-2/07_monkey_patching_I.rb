# The Monkey Patching pattern (commonly known as Monkey Patching)
# is a programming technique in Ruby that allows you to alter the behavior
# of an existing class without having to change the class's source code.
# This is accomplished by adding a new method to the existing class.
# The Monkey Patching pattern is a useful technique for extending the
# behavior of an existing class without having to change the original
# source code. This has been widely used to implement extra functionality
# in existing code.

class Array
    def sum
        total = 0
        each { |element| total += element if element.is_a?(Numeric) }
        total
    end

    def multiply
        total = 1
        each { |element| total *= element if element.is_a?(Numeric) }
        total
    end
end

p [1, 'hello', 2, false, 3].sum # => 6
p [1, 2, 3].multiply

class String
    def alphabet_sum
        alphabet = ('a'..'z').to_a
        sum = 0
        downcase.each_char { |char| sum += alphabet.index(char) + 1 if alphabet.include?(char) }
        sum
    end

    def get_alphabet_positions
        alphabet = ('a'..'z').to_a
        downcase.each_char.map { |char| alphabet.index(char) + 1 if alphabet.include?(char) }
    end
end

p 'abc'.alphabet_sum # => 6
p 'zzz'.alphabet_sum # => 78
p 'hello world'.get_alphabet_positions # => [8, 5, 12, 12, 15, nil, 23, 15, 18, 12, 4]
p 'abcdefg'.get_alphabet_positions # => [1, 2, 3, 4, 5, 6, 7]
