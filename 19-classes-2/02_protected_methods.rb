# Protected methods in Ruby are those that can be called from instances of the same class or from subclasses.
# This visibility is more restrictive than public methods, which can be called from anywhere.
# Unlike private methods, protected methods allow inheritance, which means that protected
# methods of the superclass can be called from the subclass. This prevents methods from being
# redefined in each subclass, allowing code reuse.

# Description: Protected methods
class Car
    def initialize(age, miles)
        base_value = 20_000
        age_deduction = age * 1000
        miles_deduction = (miles / 10.to_f)
        @value = base_value - age_deduction - miles_deduction
    end

    def compare_car_with(car)
        value > car.value ? 'Your car is better!' : 'Your car is worse!'
    end

    protected

    attr_reader :value
end

civic = Car.new(3, 30_000)
fiat = Car.new(1, 50_000)
p civic.compare_car_with(fiat)
p fiat.compare_car_with(civic)
