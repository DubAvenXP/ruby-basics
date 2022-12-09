class Gadget
    attr_accessor :username
    attr_reader :production_number
    attr_writer :password

    def initialize(username, password)
        # by default, the instance variables are private

        @username = username
        @password = password
        @production_number = "#{('a'..'z').to_a.sample}-#{rand(1..999)}"
    end

    def to_s
        "Gadget #{@production_number} has the username #{@username}. It is made from the #{self.class} class and it has the ID #{object_id}."
    end
end

phone = Gadget.new('lmessi', '123456789')
laptop = Gadget.new('cronaldo', '987654321')

puts phone
puts laptop
