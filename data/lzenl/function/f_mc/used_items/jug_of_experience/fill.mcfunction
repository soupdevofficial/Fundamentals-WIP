##
 # start.mcfunction
 # 
 #
 # Created by .
##

advancement revoke @s from lzenl:f_mc/used_items/jug_of_experience_fill

execute store result score #temp .data run experience query @s levels

execute if score #temp .data matches 0 run return fail




execute if items entity @s weapon.offhand stone_pickaxe[custom_data~{exp_store:true}] store result score #temp .data run data get entity @s equipment.offhand.components.minecraft:custom_data.exp 1
execute if items entity @s weapon.mainhand stone_pickaxe[custom_data~{exp_store:true}] store result score #temp .data run data get entity @s SelectedItem.components.minecraft:custom_data.exp 1



execute if score #temp .data matches 100.. run return fail



execute store result storage temp data.exp int 1 run scoreboard players add #temp .data 1




experience add @s -1 levels

item modify entity @s weapon.mainhand {  "function": "minecraft:set_damage","damage": 0.01,"add": true,"conditions": []}



playsound minecraft:block.sculk.spread player @a ~ ~ ~ 1 0.5
playsound minecraft:block.sculk.charge player @a ~ ~ ~ 0.5 2


execute at @s run particle sculk_charge{roll:0} ~ ~1 ~ 0 0.5 0 0.1 1



execute if items entity @s weapon.mainhand stone_pickaxe[custom_data~{exp_store:true}] run return run function lzenl:f_mc/used_items/jug_of_experience/modify with storage temp data
function lzenl:f_mc/used_items/jug_of_experience/modifyof with storage temp data
