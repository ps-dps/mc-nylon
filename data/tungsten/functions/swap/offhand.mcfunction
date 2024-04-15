execute if score @s tungsten.uid.offhand matches 0 if score .new tungsten.uid.offhand matches 0 run return -1
execute if score .new tungsten.uid.offhand matches -1 run function tungsten:init/offhand
scoreboard players operation @s tungsten.uid.offhand = .new tungsten.uid.offhand
function #tungsten:swap/offhand
