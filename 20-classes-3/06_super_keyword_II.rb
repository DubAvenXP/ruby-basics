# super without parentheses
# super with parentheses but no arguments
# super with parentheses and with these arguments
class Car
    def drive
        'Room! Room!'
    end
end

class Firetruck < Car
    def drive(speed)
        # super + " Beep! Beep! I'm driving at #{speed} miles per hour!" # error
        super() + " Beep! Beep! I'm driving at #{speed} miles per hour!"
    end
end

ft = Firetruck.new
p ft.drive
