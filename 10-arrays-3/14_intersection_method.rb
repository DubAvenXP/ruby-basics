# typed: strict

require 'sorbet-runtime'

# Intersection method
# returns a new array containing elements common to the two arrays
module IntersectionMethod
    extend T::Sig

    # Intersection method

    numbers = [1, 2, 3]
    numbers2 = [3, 4, 5]

    p numbers & numbers2 # [3]

    ballon_dor_winners = ['Lionel Messi', 'Cristiano Ronaldo', 'Luka Modric']
    world_cup_players = ['Luka Modric', 'Kylian Mbappe', 'Neymar', 'Lionel Messi', 'Kevin De Bruyne', 'Paul Pogba']

    # Intersection method returns a new array containing elements common to the two arrays

    world_cup_players_and_ballon_dor_winners = ballon_dor_winners & world_cup_players

    p world_cup_players_and_ballon_dor_winners
end
