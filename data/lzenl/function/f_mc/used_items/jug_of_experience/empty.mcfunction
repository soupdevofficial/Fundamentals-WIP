##
 # start.mcfunction
 # 
 #
 # Created by .
##











execute if items entity @s weapon.offhand stone_pickaxe[custom_data~{exp_store:true}] store result score #temp .data run data get entity @s equipment.offhand.components.minecraft:custom_data.exp 1
execute if items entity @s weapon.mainhand stone_pickaxe[custom_data~{exp_store:true}] store result score #temp .data run data get entity @s SelectedItem.components.minecraft:custom_data.exp 1



execute if score #temp .data matches ..0 run return fail

experience add @s 1 levels

item modify entity @s weapon.mainhand { "function": "minecraft:set_damage","damage": -0.0125,"add": true,"conditions": []}

execute store result storage temp data.exp int 1 run scoreboard players remove #temp .data 1

playsound minecraft:block.sculk.break player @a ~ ~ ~ 1 0.5



execute at @s run particle sculk_charge_pop{roll:0} ~ ~1 ~ 0 0.5 0 0.1 1



execute if items entity @s weapon.mainhand stone_pickaxe[custom_data~{exp_store:true}] run return run function lzenl:f_mc/used_items/jug_of_experience/modify with storage temp data
function lzenl:f_mc/used_items/jug_of_experience/modifyof with storage temp data
