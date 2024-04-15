execute if score @s tungsten.uid.head matches 0 if score .new tungsten.uid.head matches 0 run return -1
execute if score .new tungsten.uid.head matches -1 run function tungsten:init/head
scoreboard players operation @s tungsten.uid.head = .new tungsten.uid.head
function #tungsten:swap/head
