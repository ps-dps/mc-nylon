execute if score @s tungsten.uid.offhand matches 0 if score .new tungsten.uid.offhand matches 0 run return -1
data remove storage tungsten:item components
execute unless score .new tungsten.uid.offhand matches 0 run data modify storage tungsten:item components set from entity @s Inventory[{Slot:-106b}].components
execute if score .new tungsten.uid.offhand matches -1 run function tungsten:init/offhand
scoreboard players operation @s tungsten.uid.offhand = .new tungsten.uid.offhand
function #tungsten:swap/offhand
