execute store result score .new tungsten.uid run attribute @s generic.luck get 1099511627776
execute store result score .new tungsten.uid.offhand run attribute @s generic.luck modifier value get c-0-a455-0-b 1099511627776
execute if score .new tungsten.uid matches 2147483647 run return run function tungsten:tick/check
scoreboard players operation .new tungsten.uid += .new tungsten.uid.offhand
execute unless score .new tungsten.uid = @s tungsten.uid run function tungsten:tick/check
