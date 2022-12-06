# typed: strict

require 'sorbet-runtime'

# Sort method and sort_by method
# sort method returns a new array with the elements sorted in ascending order
# sort_by method returns a new array with the elements sorted in ascending order
module ConvertHashToArray
    extend T::Sig

    pokemons = {
        squirtle: 'Water',
        bulbasaur: 'Grass',
        charmander: 'Fire'
    }

    # sort method not mutating the caller
    p pokemons.sort # [[:bulbasaur, "Grass"], [:charmander, "Fire"], [:squirtle, "Water"]]

    sorted_by_pokemon = pokemons.sort_by { |pokemon, _type| pokemon }
    sorted_by_type = pokemons.sort_by { |_pokemon, type| type }
    # sorted_by_type = pokemons.sort_by { |_pokemon, type| type }.reverse

    p sorted_by_pokemon # [[:bulbasaur, "Grass"], [:charmander, "Fire"], [:squirtle, "Water"]]
    p sorted_by_type # [[:charmander, "Fire"], [:bulbasaur, "Grass"], [:squirtle, "Water"]]
end
