##
 # place_ray.mcfunction
 # 
 #
 # Created by .
##

advancement revoke @s only lzenl:f_mc/used_items/clay_mold_dry

execute store result score #return .data run data get entity @s SelectedItem.components.minecraft:custom_data.id

execute positioned ~ ~1.62 ~ run function lzenl:f_mc/used_items/clay_mold_dry/raycast