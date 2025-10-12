##
 # hit_start.mcfunction
 # 
 #
 # Created by .
##

scoreboard players set #return .data 1
# Determine the opposite face of the ray and hit the block there

execute if score #last_step .data matches 1 if score x_sign .data matches -1 positioned ~1 ~ ~ run function lzenl:f_mc/used_items/voxel_traverse/check_valid
execute if score #last_step .data matches 1 if score x_sign .data matches 1 positioned ~-1 ~ ~ run function lzenl:f_mc/used_items/voxel_traverse/check_valid

execute if score #last_step .data matches 2 if score y_sign .data matches -1 positioned ~ ~1 ~ run function lzenl:f_mc/used_items/voxel_traverse/check_valid
execute if score #last_step .data matches 2 if score y_sign .data matches 1 positioned ~ ~-1 ~ run function lzenl:f_mc/used_items/voxel_traverse/check_valid

execute if score #last_step .data matches 3 if score z_sign .data matches -1 positioned ~ ~ ~1 run function lzenl:f_mc/used_items/voxel_traverse/check_valid
execute if score #last_step .data matches 3 if score z_sign .data matches 1 positioned ~ ~ ~-1 run function lzenl:f_mc/used_items/voxel_traverse/check_valid




