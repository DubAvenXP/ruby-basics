# Structs are data structures similar to hashes,
# consisting of a collection of key-value pairs.
# They are designed to store data related to each
# other, and usually contain fields such as names,
# addresses, phone numbers, etc. Structs are useful
# for grouping information related to a particular entity.

# Struct example
module AppStore
    App = Struct.new(:name, :developer, :version)
    APPS = [
        App.new(:Chat, :facebook, 2.0),
        App.new(:Twitter, :twitter, 5.8),
        App.new(:Weather, :yahoo, 10.15),
        App.new(:Maps, :google, 4.1)
    ]

    def self.find_app(name)
        APPS.find { |app| app.name == name }
    end
end

# Los Structs en Ruby son una forma sencilla de organizar datos relacionados en una estructura de clase. Estos Structs ofrecen una alternativa ligera a la creación de clases completas para almacenar y acceder a los datos.

# Ejemplo de código:

# # Crea una estructura de clase con los atributos nombre y edad
# Persona = Struct.new(:nombre, :edad)

# # Crea una nueva instancia de la estructura de clase
# persona = Persona.new("Juan", 25)

# # Imprime los atributos de la instancia
# puts persona.nombre
# puts persona.edad

# Caso de uso:

# Los Structs son útiles cuando se trata de almacenar y manipular datos simples, como los atributos de una persona (nombre, edad, etc.). Esto puede ser útil cuando se desea crear una lista de personas con sus respectivos atributos, o cuando se desea acceder fácilmente a los atributos de una persona. Los Structs también son útiles para almacenar datos relacionados en una estructura de clase, como pueden ser los valores de una matriz.

# Diferencias con un hash:

# Los Structs se diferencian de los hashes en que los Structs ofrecen una sintaxis más clara para definir y acceder a los atributos, mientras que los hashes requieren que se utilicen claves para acceder a los valores. Además, los Structs permiten el uso de métodos, lo que permite una mayor flexibilidad al manipular datos. Por último, los Structs se pueden usar como una forma de crear clases simples, mientras que los hashes solo se pueden usar para almacenar datos.
