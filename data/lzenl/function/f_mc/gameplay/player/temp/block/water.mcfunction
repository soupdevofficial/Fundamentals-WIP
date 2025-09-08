##
 # water.mcfunction
 # 
 #
 # Created by .
##
execute if score #time .data matches 0 run scoreboard players remove @s temp 4
execute if score #time .data matches 1.. run scoreboard players remove @s temp 1

execute if score @s temp matches 46.. at @s run particle minecraft:poof ~ ~1 ~ 0.2 0.5 0.2 0.1 10 force @a
execute if score @s temp matches 46.. run playsound block.fire.extinguish player @a ~ ~ ~ 1 1
execute if score @s temp matches 46.. run scoreboard players set @s temp 45
