execute if score @s nylon.charge matches 1.. if predicate nylon:is_mainhand run function nylon:event/finish
execute store result score @s nylon.mainhand if data storage tungsten:item components.minecraft:custom_data.nylon
