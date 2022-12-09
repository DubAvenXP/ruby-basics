class Gadget
    attr_accessor :username, :production_number, :password

    def initialize
        # by default, the instance variables are private

        @username = "User #{rand(1..100)}"
        @password = 'topsecret'
        @production_number = "#{('a'..'z').to_a.sample}-#{rand(1..999)}"
    end

    def to_s
        "Gadget #{@production_number} has the username #{@username}. It is made from the #{self.class} class and it has the ID #{object_id}."
    end

    # setters
    # def username=(new_username)
    #     @username = new_username
    # end

    # def password=(new_password)
    #     @password = new_password
    # end
end

phone = Gadget.new
laptop = Gadget.new

puts "Phone: [#{phone.username},#{phone.production_number},#{phone.password}]"
puts "Laptop: [#{laptop.username},#{laptop.production_number},#{laptop.password}]"

# change the username
phone.username = 'John'
puts phone
