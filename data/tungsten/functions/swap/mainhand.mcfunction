execute if score @s tungsten.uid.mainhand matches 0 if score .new tungsten.uid.mainhand matches 0 run return -1
execute if score .new tungsten.uid.mainhand matches -1 run function tungsten:init/mainhand
scoreboard players operation @s tungsten.uid.mainhand = .new tungsten.uid.mainhand
function #tungsten:swap/mainhand
