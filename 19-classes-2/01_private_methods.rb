# Purpose: 19. Classes - Part 2 - Private Methods
class Gadget
    attr_reader :production_number
    attr_accessor :username
    attr_writer :password

    def initialize(username, password)
        @username = username
        @password = password
        @production_number = generate_production_number
    end

    def to_s
        "Gadget #{production_number} has the username #{username}.
        It is made from the #{self.class} class and it
        has the ID #{object_id}"
    end

    private

    def generate_production_number
        start_digits = rand(10_000..99_999)
        end_digits = rand(10_000..99_999)
        alphabet = ('A'..'Z').to_a
        middle_digits = Time.now.year.to_s[-2..-1]
        5.times { middle_digits << alphabet.sample }
        "#{start_digits}-#{middle_digits}-#{end_digits}"
    end
end

gadget1 = Gadget.new('user1', 'password1')
puts gadget1.to_s
# puts gadget1.generate_production_number # => NoMethodError: private method `generate_production_number' called for #<Gadget:0x00007f9b1a
