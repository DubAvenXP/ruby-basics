# typed: strict

require 'sorbet-runtime'

# Introduction
module Introduction
    extend T::Sig

    # Blocks are chunks of code that you can associate with method calls.

    evens = [2, 4, 6, 8, 10]
    evens.each { |n| puts n**3 }

    5.times do |i|
        puts i
    end

    # blocks are not objects
end
