execute if score @s tungsten.uid.legs matches 0 if score .new tungsten.uid.legs matches 0 run return -1
data remove storage tungsten:item components
execute unless score .new tungsten.uid.legs matches 0 run data modify storage tungsten:item components set from entity @s Inventory[{Slot:101b}].components
execute if score .new tungsten.uid.legs matches -1 run function tungsten:init/legs
scoreboard players operation @s tungsten.uid.legs = .new tungsten.uid.legs
function #tungsten:swap/legs
