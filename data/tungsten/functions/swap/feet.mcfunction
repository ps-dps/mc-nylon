execute if score @s tungsten.uid.feet matches 0 if score .new tungsten.uid.feet matches 0 run return -1
execute if score .new tungsten.uid.feet matches -1 run function tungsten:init/feet
scoreboard players operation @s tungsten.uid.feet = .new tungsten.uid.feet
function #tungsten:swap/feet
