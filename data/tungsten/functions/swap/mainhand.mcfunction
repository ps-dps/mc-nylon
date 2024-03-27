execute if score @s tungsten.uid.mainhand matches 0 if score .new tungsten.uid.mainhand matches 0 run return -1
data remove storage tungsten:item components
execute unless score .new tungsten.uid.mainhand matches 0 run data modify storage tungsten:item components set from entity @s SelectedItem.components
execute if score .new tungsten.uid.mainhand matches -1 run function tungsten:init/mainhand
scoreboard players operation @s tungsten.uid.mainhand = .new tungsten.uid.mainhand
function #tungsten:swap/mainhand
