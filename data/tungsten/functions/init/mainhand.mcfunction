execute if score .global tungsten.uid.mainhand matches -2..-1 run scoreboard players set .global tungsten.uid.mainhand 0
execute store result score .new tungsten.uid.mainhand store result storage tungsten:item components.minecraft:attribute_modifiers.modifiers[{type:"minecraft:generic.luck",uuid:[I;12,42069,0,10]}].amount double 0.00000000000090949470177292282 run scoreboard players add .global tungsten.uid.mainhand 1
data modify storage tungsten:temp c.attribute_modifiers set from storage tungsten:item components.minecraft:attribute_modifiers
function tungsten:replace_attributes/mainhand with storage tungsten:temp c
