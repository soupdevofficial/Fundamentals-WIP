execute store result score #return .data run data get entity @s item.components.minecraft:custom_data.weapon.element

execute if score #return .data matches 1 run return run tag @s add normal
execute if score #return .data matches 2 run return run tag @s add magic
execute if score #return .data matches 3 run return run tag @s add infernal
execute if score #return .data matches 4 run return run tag @s add dark
execute if score #return .data matches 5 run return run tag @s add light
execute if score #return .data matches 6 run return run tag @s add abyssal