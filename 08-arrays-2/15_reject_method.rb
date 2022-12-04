# typed: strict
# The reject method is the opposite of select. It returns an array of all the
# elements of the original array that do not meet the criteria in the block.

animals = %w[dog cat frog bird snake]
animals_reject = animals.reject { |animal| animal == 'frog' }
p animals_reject

animals_reject = animals.reject { |animal| animal.include?('o') }
p animals_reject
