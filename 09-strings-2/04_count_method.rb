# typed: strict

require 'sorbet-runtime'

# Count Method
# Is used to count the number of times a substring appears in a string.
module CountMethod
    extend T::Sig

    # count how many times a 't' appears in the string
    puts 'Count Method'.count('t')

    # in this case, it will count how many times a 't' or 'd' no matter the order and position of the substring
    puts 'Count Method'.count('td')

end
