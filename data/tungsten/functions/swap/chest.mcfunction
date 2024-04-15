execute if score @s tungsten.uid.chest matches 0 if score .new tungsten.uid.chest matches 0 run return -1
execute if score .new tungsten.uid.chest matches -1 run function tungsten:init/chest
scoreboard players operation @s tungsten.uid.chest = .new tungsten.uid.chest
function #tungsten:swap/chest
