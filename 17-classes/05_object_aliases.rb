class Gadget
end

shiny = Gadget.new
flashy = Gadget.new

puts shiny.object_id
puts flashy.object_id

puts

glossy = shiny
p glossy.object_id
p shiny.object_id
