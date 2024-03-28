execute if score @s nylon.charge matches 1.. if predicate nylon:is_offhand run function nylon:swap/finish_on_swap
execute store result score @s nylon.offhand if data storage tungsten:item components.minecraft:custom_data.nylon
