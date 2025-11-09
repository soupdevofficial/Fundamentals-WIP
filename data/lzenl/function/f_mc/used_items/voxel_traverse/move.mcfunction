##
 # 2.mcfunction
 # 
 #
 # Created by .
##
execute positioned ~ ~-1 ~ unless entity @s[distance=..6] run return run function lzenl:f_mc/used_items/return
execute unless block ~ ~ ~ #replaceable run return run function lzenl:f_mc/used_items/voxel_traverse/hit_start
execute if score x_max .data < y_max .data if score x_max .data < z_max .data run return run function lzenl:f_mc/used_items/voxel_traverse/trav_x
execute if score y_max .data < x_max .data if score y_max .data <= z_max .data run return run function lzenl:f_mc/used_items/voxel_traverse/trav_y
execute if score z_max .data <= x_max .data if score z_max .data <= y_max .data run return run function lzenl:f_mc/used_items/voxel_traverse/trav_z


