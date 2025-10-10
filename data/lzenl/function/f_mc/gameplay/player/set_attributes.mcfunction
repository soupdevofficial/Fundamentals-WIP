##
 # set_attributes.mcfunction
 # 
 #
 # Created by .
##
attribute @s minecraft:block_break_speed base set 0.1

attribute @s minecraft:attack_damage base set 0.1

attribute @s minecraft:attack_speed base set 3.5

execute unless score @s aurora matches 4.. run attribute @s minecraft:max_health base set 6













function lzenl:f_mc/gameplay/player/temp/temp_reset

execute store result storage temp id int 1 run scoreboard players add .id .data 1
execute store result score @s .id run scoreboard players get .id .data
function lzenl:f_mc/gameplay/player/temp/temp with storage temp

scoreboard players set @s temp 15

tag @s add attributes_set