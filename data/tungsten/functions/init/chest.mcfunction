execute if score .global tungsten.uid.chest matches -2..-1 run scoreboard players set .global tungsten.uid.chest 0
execute store result score .new tungsten.uid.chest store result storage tungsten:item components.minecraft:attribute_modifiers.modifiers[{type:"minecraft:generic.luck",uuid:[I;12,42069,0,13]}].amount double 0.00000000000090949470177292282 run scoreboard players add .global tungsten.uid.chest 1
data modify storage tungsten:temp c.attribute_modifiers set from storage tungsten:item components.minecraft:attribute_modifiers
function tungsten:replace_attributes/chest with storage tungsten:temp c
