##
 # checkl_temp_boss_init.mcfunction
 # 
 #
 # Created by .
##
execute store result storage temp id int 1 run scoreboard players get @s .id
execute store result score #temp temp run function lzenl:f_mc/gameplay/player/temp/check_temp_boss with storage temp
execute if score #temp temp matches 1 run return fail
function lzenl:f_mc/gameplay/player/temp/temp with storage minecraft:temp