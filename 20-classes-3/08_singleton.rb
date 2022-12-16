# Singleton methods son métodos definidos para una única
# instancia de una clase en particular. Estos métodos no se
# heredan y solo se pueden llamar desde la instancia de la clase
# en la que se definieron.

# Las clases Singleton son clases especiales que solo tienen una
# instancia en todo el programa. Estas clases no se pueden instanciar
# directamente y solo se pueden usar llamando a su método singleton.
# Estas clases se usan comúnmente para crear objetos de configuración
# globales que se pueden usar en todo el programa.

class Configuracion
    attr_accessor :opciones

    # Crear una instancia singleton de la clase
    @@instancia = Configuracion.new

    # Método singleton para obtener la instancia de la clase
    def self.instancia
        @@instancia
    end

    # Prevenir que se cree una nueva instancia desde el exterior
    private_class_method :new

    # Constructor
    def initialize
        @opciones = {
            'opcion_1' => 'valor_1',
            'opcion_2' => 'valor_2'
        }
    end
end

# Usar la clase singleton
configuracion = Configuracion.instancia
puts configuracion.opciones['opcion_1'] # => "valor_1"

# ejemplo extraido de openai
