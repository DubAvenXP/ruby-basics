# typed: strict

require 'sorbet-runtime'

# Select and reject methods
# select and reject methods are used to filter a hash
module DeleteMethod
    extend T::Sig

    recipe = {
        sugar: 5,
        flour: 10,
        salt: 2,
        pepper: 4
    }

    p recipe.select { |_ingredient, teaspoons| teaspoons > 5 } # { flour: 10 }
    p recipe.select { |ingredient, _teaspoons| ingredient.to_s.include?('s') } # { sugar: 5, salt: 2 }
    puts
    p recipe.reject { |_ingredient, teaspoons| teaspoons > 5 } # { sugar: 5, salt: 2 }
    p recipe.reject { |ingredient, _teaspoons| ingredient.to_s.include?('s') } # { flour: 10, pepper: 4 }
end
