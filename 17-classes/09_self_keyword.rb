class Gadget
    def initialize
        @username = "User #{rand(1..100)}"
        @password = 'topsecret'
        @production_number = "#{('a'..'z').to_a.sample}-#{rand(1..999)}"
    end

    # override the to_s method
    def to_s
        # self is the instance of the class
        "Gadget #{@production_number} has the username #{@username}. It is made from the #{self.class} class and it has the ID #{object_id}."
    end
end

phone = Gadget.new
laptop = Gadget.new

puts phone
puts laptop
