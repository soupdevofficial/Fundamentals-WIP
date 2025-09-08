##
 # check.mcfunction
 # 
 #
 # Created by .
##

advancement revoke @s only lzenl:f_mc/check/hit_by_entity

execute unless function lzenl:f_mc/gameplay/combat/armor/attacker run return fail
data remove storage f_mc:combat data.display.bar



execute on attacker run function lzenl:f_mc/gameplay/combat/armor/element_get

function lzenl:f_mc/gameplay/combat/armor/element_store

execute on attacker as @s[type=player] run scoreboard players operation #dealt .data = @s dmg_dealt
execute if entity @s[type=player] run scoreboard players operation #dealt .data = @s dmg_taken
scoreboard players reset @s dmg_taken
scoreboard players reset @s dmg_dealt

tag @s add recent_dmg


scoreboard players operation #dmg .data = #dealt .data

scoreboard players set #dmg_original .data 1000
scoreboard players operation #dmg_original .data *= #dmg .data

#divide by /10000

execute store result score #multiplier_1 .data run data get storage f_mc:combat data.element_multiplier[0] 10
execute store result score #multiplier_2 .data run data get storage f_mc:combat data.element_multiplier[1] 10
execute store result score #multiplier_3 .data run data get storage f_mc:combat data.element_multiplier[2] 10

execute unless score #multiplier_1 .data matches 1.. run scoreboard players set #multiplier_1 .data 10
execute unless score #multiplier_2 .data matches 1.. run scoreboard players set #multiplier_2 .data 10
execute unless score #multiplier_3 .data matches 1.. run scoreboard players set #multiplier_3 .data 10




scoreboard players reset #armor_break .data
execute if score #multiplier_3 .data matches 40 run scoreboard players set #armor_break .data 1
execute if score #multiplier_2 .data matches 40 run scoreboard players set #armor_break .data 1
execute if score #multiplier_1 .data matches 40 run scoreboard players set #armor_break .data 1



execute store result score #armor_active .data run attribute @s minecraft:armor get 1
execute if score #armor_break .data matches 1 if score #armor_active .data matches 1.. run function lzenl:f_mc/gameplay/combat/armor/armor_damage_start



scoreboard players operation #dmg .data *= #multiplier_1 .data
scoreboard players operation #dmg .data *= #multiplier_2 .data
scoreboard players operation #dmg .data *= #multiplier_3 .data

scoreboard players set #reduction .data 8

scoreboard players operation #dmg_original .data -= #dmg .data
execute if score #armor_active .data matches 1.. run scoreboard players operation #dmg_original .data /= #reduction .data

















function lzenl:f_mc/gameplay/combat/armor/display_def









execute if score #dmg_original .data matches 0 run return fail
 

execute as @s[type=player] run return run function lzenl:f_mc/gameplay/combat/armor/player_ouchy


execute store result score #hp .data run data get entity @s Health 10000

scoreboard players operation #hp .data += #dmg_original .data

tag @s add dmg

execute at @s if score #hp .data matches ..0 run return run execute on attacker run damage @n[tag=dmg] 10000 generic by @s from @s

tag @s remove dmg

execute store result entity @s Health int 0.0001 run scoreboard players get #hp .data
