# typed: true

require 'sorbet-runtime'

# Main class to be used as entry point for the program
class Main
    extend T::Sig

    sig { params(str: String).returns(Integer) }
    def self.main(str)
        str.length
    end

    sig { returns(Integer) }
    def no_params
        42
    end
end


