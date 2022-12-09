class Gadget
    def initialize
        @username = "User #{rand(1..100)}"
        @password = 'topsecret'
        @production_number = "#{('a'..'z').to_a.sample}-#{rand(1..999)}"
    end

    # instance methods
    # this method can be called on any instance of the Gadget class
    def info
        "Gadget #{@production_number} has the username #{@username}"
    end
end

phone = Gadget.new
laptop = Gadget.new

# p phone.@username # error
# p phone.@password # error
# p phone.@production_number # error

p phone.info
p laptop.info

p phone.methods - Object.methods
