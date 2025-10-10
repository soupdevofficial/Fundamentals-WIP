##
 # trav_x.mcfunction
 # 
 #
 # Created by .
##
scoreboard players operation x_max .data += x_delta .data
scoreboard players remove #vt_steps .data 1





scoreboard players set #last_step .data 1







execute if score x_sign .data matches 1 positioned ~1 ~ ~ run return run function lzenl:f_mc/used_items/voxel_traverse/move

execute positioned ~-1 ~ ~ run function lzenl:f_mc/used_items/voxel_traverse/move