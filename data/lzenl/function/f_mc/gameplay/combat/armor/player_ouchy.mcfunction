##
 # player_ouchy.mcfunction
 # 
 #
 # Created by .
##



data remove storage f_mc:combat data.final_dmg


execute store result storage f_mc:combat data.final_dmg.hp_original double 1 run attribute @s max_health base get 1


execute store result score #hp .data run data get entity @s Health 10000

scoreboard players operation #hp .data += #dmg_original .data


execute if score #hp .data matches ..0 run damage @s 124 generic_kill


execute store result storage f_mc:combat data.final_dmg.hp float 0.0001 run scoreboard players get #hp .data

schedule function lzenl:f_mc/delayed_conditional 2t append

function lzenl:f_mc/gameplay/combat/armor/apply_ouchy2 with storage f_mc:combat data.final_dmg

tag @s add ouchy





