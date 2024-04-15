execute if score .global tungsten.uid.head matches -2..-1 run scoreboard players set .global tungsten.uid.head 0
data modify storage tungsten:temp c.attribute_modifiers set from entity @s Inventory[{Slot:103b}].components.minecraft:attribute_modifiers
execute store result score .new tungsten.uid.head store result storage tungsten:temp c.attribute_modifiers.modifiers[{type:"minecraft:generic.luck",uuid:[I;12,42069,0,12]}].amount double 0.00000000000090949470177292282 run scoreboard players add .global tungsten.uid.head 1
function tungsten:replace_attributes/head with storage tungsten:temp c
