##
 # recall_compass.mcfunction
 # 
 #
 # Created by .
##
advancement revoke @s only lzenl:f_mc/used_items/recall_compass


data merge storage temp {loc:"no_dimenesion"}
data modify storage temp loc set from entity @s SelectedItem.components.minecraft:lodestone_tracker.target.dimension

execute store result score .temp .data run function lzenl:f_mc/used_items/recall_compass/check_dim with storage temp

execute if score .temp .data matches 0 run tellraw @s {"text":"No trackable lodestone!","color":"red"}

execute if score .temp .data matches 0 run return fail


data modify storage temp coord.x set from entity @s SelectedItem.components.minecraft:lodestone_tracker.target.pos[0]
data modify storage temp coord.y set from entity @s SelectedItem.components.minecraft:lodestone_tracker.target.pos[1]
data modify storage temp coord.z set from entity @s SelectedItem.components.minecraft:lodestone_tracker.target.pos[2]




function lzenl:f_mc/used_items/recall_compass/teleport with storage temp coord
data remove storage temp coord
