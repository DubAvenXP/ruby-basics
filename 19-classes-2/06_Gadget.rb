require_relative './06_structs'

# Purpose: 19. Classes - Part 2 - Private Methods
class Gadget
    attr_reader :production_number, :apps
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

    def install_app(name)
        app = AppStore.find_app(name)
        apps << app unless apps.include?(app)
    end

    def delete_app(name)
        app = apps.find { |installed_app| installed_app.name == name }
        apps.delete(app) unless app.nil?
    end

    def show_installed_apps
        puts 'Installed apps:'
        p apps
        puts
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
end

gadget1 = Gadget.new('user1', 'password1')
# puts gadget1.to_s
gadget1.show_installed_apps
gadget1.install_app(:Chat)
gadget1.show_installed_apps
gadget1.install_app(:Twitter)
gadget1.show_installed_apps
gadget1.delete_app(:Chat)
gadget1.show_installed_apps
