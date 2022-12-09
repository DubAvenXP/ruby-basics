class Gadget
    def initialize
        @username = "User #{rand(1..100)}"
        @password = 'topsecret'
        @production_number = "#{('a'..'z').to_a.sample}-#{rand(1..999)}"
    end

    # override the to_s method
    def to_s
        "Gadget #{@production_number} has the username #{@username}"
    end
end

phone = Gadget.new
laptop = Gadget.new

puts phone
puts phone.to_s
puts
puts laptop
puts laptop.to_s
