execute if score @s tungsten.uid.feet matches 0 if score .new tungsten.uid.feet matches 0 run return -1
data remove storage tungsten:item components
execute unless score .new tungsten.uid.feet matches 0 run data modify storage tungsten:item components set from entity @s Inventory[{Slot:100b}].components
execute if score .new tungsten.uid.feet matches -1 run function tungsten:init/feet
scoreboard players operation @s tungsten.uid.feet = .new tungsten.uid.feet
function #tungsten:swap/feet
