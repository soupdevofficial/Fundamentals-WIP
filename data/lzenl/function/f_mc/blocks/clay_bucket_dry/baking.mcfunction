##
 # baking.mcfunction
 # 
 #
 # Created by .
##
execute unless block ~ ~ ~ #fire run return fail

scoreboard players add @s .data 1
playsound minecraft:block.lava.extinguish block @a ~ ~ ~ 0.1 2
particle cloud ~ ~0.5 ~ 0.0 0.5 0.0 0.05 3
particle flame ~ ~0.5 ~ 0.5 0.5 0.5 0.05 3

execute unless score @s .data matches 2.. run return fail

particle cloud ~ ~0.5 ~ 0.0 0.5 0.0 0.05 4

execute on passengers run function lzenl:f_mc/blocks/clay_bucket_dry/baked

tag @s remove clay_bucket_dry
tag @s add clay_bucket


playsound minecraft:block.fire.extinguish block @a ~ ~ ~ 0.25 1.5

scoreboard players reset @s .data

fill ~ ~ ~ ~ ~ ~ air replace #fire
