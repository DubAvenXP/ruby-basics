# Purpose: 19. Classes - Part 2 - Private Methods
class Gadget
    attr_reader :production_number
    attr_accessor :username

    def initialize(username, password)
        @username = username
        @password = password
        @production_number = generate_production_number
        @apps = []
    end

    def to_s
        "Gadget #{production_number} has the username #{username}.
        It is made from the #{self.class} class and it
        has the ID #{object_id}"
    end

    def password=(new_password)
        validation = validate_password(new_password)

        @password = new_password if validation
        raise 'Password must be at least 6 characters long and contain a number' unless validation
    end

    def reset(username, password)
        self.username = username
        self.password = password
        self.apps = []
    end

    private

    attr_writer :apps

    def generate_production_number
        start_digits = rand(10_000..99_999)
        end_digits = rand(10_000..99_999)
        alphabet = ('A'..'Z').to_a
        middle_digits = Time.now.year.to_s[-2..-1]
        5.times { middle_digits << alphabet.sample }
        "#{start_digits}-#{middle_digits}-#{end_digits}"
    end

    def validate_password(new_password)
        new_password.is_a?(String) && new_password.length >= 6 && new_password =~ /\d/
    end
end

gadget1 = Gadget.new('user1', 'password1')
gadget1.password = 'my_password' # password must be at least 6 characters long and contain a number
