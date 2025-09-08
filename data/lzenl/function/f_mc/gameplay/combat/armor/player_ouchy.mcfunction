##
 # player_ouchy.mcfunction
 # 
 #
 # Created by .
##
execute store result score #hp .data run data get entity @s Health 10000

scoreboard players operation #hp .data += #dmg_original .data


execute at @s if score #hp .data matches ..0 run return run damage @s 10000

effect give @s minecraft:instant_health 1 255 true



execute store result storage f_mc:combat data.player.hp_original int 1 run attribute @s max_health base get

execute store result storage f_mc:combat data.player.hp double 0.0002 run scoreboard players get #hp .data
function lzenl:f_mc/gameplay/combat/armor/apply_ouchy with storage f_mc:combat data.player

tag @s add ouchy

schedule function lzenl:f_mc/delayed_conditional 1t


