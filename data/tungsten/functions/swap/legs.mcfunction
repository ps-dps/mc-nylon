execute if score @s tungsten.uid.legs matches 0 if score .new tungsten.uid.legs matches 0 run return -1
execute if score .new tungsten.uid.legs matches -1 run function tungsten:init/legs
scoreboard players operation @s tungsten.uid.legs = .new tungsten.uid.legs
function #tungsten:swap/legs
