##
 # drying.mcfunction
 # 
 #
 # Created by .
##

execute if block ~ ~ ~ water run scoreboard players set @s .data 0
execute unless block ~ ~ ~ #air run return fail

scoreboard players add @s .data 1
playsound minecraft:block.lava.extinguish block @a ~ ~ ~ 0.1 2
particle cloud ~ ~0.5 ~ 0.0 0.5 0.0 0.05 3

execute unless score @s .data matches 36.. run return fail

particle cloud ~ ~0.5 ~ 0.0 0.5 0.0 0.05 4

execute on passengers run function lzenl:f_mc/blocks/bloomery_wet/dried

tag @s remove bloomery_wet

tag @s add bloomery_dry


playsound minecraft:block.fire.extinguish block @a ~ ~ ~ 0.25 1.5

scoreboard players reset @s .data