channels = %w[CBS FOX NBC ESPN UPN]

p channels.values_at(0) # ["CBS"]
p channels.values_at(1) # ["FOX"]
p channels.values_at(0, 2, 4) # ["CBS", "NBC", "UPN"]
p channels.values_at(1, -1) # ["FOX", "UPN"]
p channels.values_at(1, 1, 4) # ["FOX", "FOX", "UPN"]
p channels.values_at(1, 4, 9) # ["FOX", "UPN", nil]
