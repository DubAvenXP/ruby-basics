# typed: strict
# partition method
# is used to split an array into two arrays
# based on a condition that you provide

foods = ['Steak', 'Vegetables', 'Steak Burger', 'Kale', 'Tofu', 'Tuna Steaks']

# first array will contain all the elements that satisfy the condition
# second array will contain all the elements that don't satisfy the condition
partitioned_foods = foods.partition { |food| food.include?('Steak') }

p partitioned_foods # [["Steak", "Steak Burger", "Tuna Steaks"], ["Vegetables", "Kale", "Tofu"]]
