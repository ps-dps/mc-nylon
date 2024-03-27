execute unless score @s nylon.check = @s nylon.check if score @s nylon.charge matches 1 run function #nylon:begin

scoreboard players add @s nylon.check 1
execute if score @s nylon.check = @s nylon.charge run return run function #nylon:charge

function #nylon:finish
scoreboard players reset @s nylon.charge
scoreboard players reset @s nylon.check
