# Los métodos de clase y variables de clase son conceptos de programación
# orientada a objetos que se utilizan para crear objetos. Los métodos de
# clase son funciones definidas dentro de una clase, mientras que las variables
# de clase son variables que se definen dentro de una clase.

# Ejemplo:

# Example class with class methods and class variables
class Car
    # instance variables are protected by default
    @@total_cars = 0

    def self.count
        @@total_cars
    end

    def self.print_count
        puts "You have created #{@@total_cars} cars"
    end

    def initialize
        @@total_cars += 1
    end
end

Car.print_count
car1 = Car.new
Car.print_count
car2 = Car.new
Car.print_count
car3 = Car.new
car4 = Car.new
Car.print_count

# Aquí hay un método de clase (count) y una variable de clase (@@total_cars).

# Caso de uso:

# Supongamos que estamos creando una aplicación de seguimiento de vehículos.
# Podríamos crear una clase Car que contenga métodos de clase para contar el
# número total de autos creados y variables de clase para almacenar este valor.
# Esto nos permitirá mantener un registro de todos los autos creados en nuestra aplicación.
