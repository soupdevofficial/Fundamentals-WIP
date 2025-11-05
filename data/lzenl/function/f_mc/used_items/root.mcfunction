##
 # root.mcfunction
 # 
 #
 # Created by .
##
advancement revoke @s only lzenl:f_mc/used_items/root
scoreboard players set #used .data 0

# 19 ids
function lzenl:f_mc/used_items/id_get

# item type 1:at player 2:block 3:transparent block
execute if score #handed .data matches 1 store result score #used_type .data run data get entity @s SelectedItem.components."minecraft:custom_data".item.type
execute if score #handed .data matches 2 store result score #used_type .data run data get entity @s equipment.offhand.components."minecraft:custom_data".item.type
execute if score #used_type .data matches 1 anchored eyes run return run function lzenl:f_mc/used_items/use
execute anchored eyes run function lzenl:f_mc/used_items/voxel_traverse/start