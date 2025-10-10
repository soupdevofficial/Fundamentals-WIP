##
 # off_hand.mcfunction
 # 
 #
 # Created by .
##
scoreboard players set #handed .data 1 


data modify storage temp data.summon set from entity @s SelectedItem.components."minecraft:custom_data".echo_capsule.stored

execute if data storage temp data.summon[0].equipment.saddle run data modify storage temp data.summon[0].Rotation set from entity @s Rotation


execute if items entity @s weapon.mainhand minecraft:raw_iron[minecraft:custom_data~{echo_capsule:{stored:[{}]}}] run return run function lzenl:f_mc/used_items/echo_capsule/summon with storage temp data




function lzenl:f_mc/used_items/echo_capsule/get_entity