execute unless score @s nylon.check = @s nylon.check if score @s nylon.charge matches 1 run function nylon:event/begin
scoreboard players add @s nylon.check 1
execute if score @s nylon.check = @s nylon.charge run return run function nylon:event/charge
function nylon:event/finish
