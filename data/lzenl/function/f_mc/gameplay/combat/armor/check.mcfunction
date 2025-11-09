##
 # check.mcfunction
 # 
 #
 # Created by .
##
tag @s remove pl_hit

execute unless function lzenl:f_mc/gameplay/combat/armor/attacker run return fail



execute on attacker run function lzenl:f_mc/gameplay/combat/armor/element_get



execute store result score #return .data run data get storage f_mc:combat data.got.got
execute if score #return .data matches 1 run data merge storage temp {data:{text:[{"shadow_color":-14737633,text:"🗡 ",color:"#999999"},{text:"","color":"#999999"}]}}
execute if score #return .data matches 2 run data merge storage temp {data:{text:[{"shadow_color":-14737633,text:"🗡 ",color:"light_purple"},{text:"","color":"light_purple"}]}}
execute if score #return .data matches 3 run data merge storage temp {data:{text:[{"shadow_color":-14737633,text:"🗡 ",color:"#FF3C00"},{text:"","color":"#FF3C00"}]}}
execute if score #return .data matches 5 run data merge storage temp {data:{text:[{"shadow_color":-14737633,text:"🗡 ",color:"#fcbd3f"},{text:"","color":"#fcbd3f"}]}}
execute if score #return .data matches 4 run data merge storage temp {data:{text:[{"shadow_color":-14737633,text:"🗡 ",color:"#176069"},{text:"","color":"#176069"}]}}
execute if score #return .data matches 6 run data merge storage temp {data:{text:[{"shadow_color":-14737633,text:"🗡 ",color:"#8e31cc"},{text:"","color":"#8e31cc"}]}}










function lzenl:f_mc/gameplay/combat/armor/element_store

execute on attacker as @s[type=player] run scoreboard players operation #dealt .data = @s dmg_dealt
execute if entity @s[type=player] run scoreboard players operation #dealt .data = @s dmg_taken
execute on attacker as @s[type=player] run scoreboard players operation #dmg_absorbed .data = @s dmg_dealt_absorbed
execute if entity @s[type=player] run scoreboard players operation #dmg_absorbed .data = @s dmg_taken_absorbed


scoreboard players reset * dmg_taken
scoreboard players reset * dmg_dealt

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




scoreboard players operation #multiplier_1 .data *= #multiplier_2 .data
scoreboard players operation #multiplier_3 .data *= #multiplier_1 .data

execute if score #multiplier_3 .data > #dmg_max_multi .data run scoreboard players operation #multiplier_3 .data = #dmg_max_multi .data

scoreboard players reset #armor_break .data
execute if score #multiplier_3 .data matches 4000 run scoreboard players set #armor_break .data 1


scoreboard players operation #dmg .data *= #multiplier_3 .data


execute store result score #resist .data run data get entity @s AbsorptionAmount 1










scoreboard players set #reduction .data 8

execute store result score #armor_active .data run attribute @s minecraft:armor get 1





execute if score #armor_active .data matches 1.. run scoreboard players operation #dmg .data /= #reduction .data


scoreboard players operation #dmg_original .data -= #dmg .data


scoreboard players set #dmg_display .data 10000
scoreboard players operation #dmg_display .data += #dmg .data
execute as @s[tag=!vul] if score #armor_active .data matches 1.. run function lzenl:f_mc/gameplay/combat/armor/armor_damage_start


execute if score #resist .data matches 1.. run data modify storage temp data.text[0].text set value "🛡 "
execute if score #resist .data matches 1.. store result storage temp data.text[1].text float 1 run scoreboard players get #dmg_absorbed .data
execute unless score #resist .data matches 1.. store result storage temp data.text[1].text float 0.0001 run scoreboard players get #dmg_display .data
data modify storage minecraft:temp data.text[1].text set string storage minecraft:temp data.text[1].text 0 -1
execute at @s run function lzenl:f_mc/gameplay/combat/dmg_indicator with storage temp data


execute on attacker run scoreboard players reset @s dmg_dealt_absorbed
scoreboard players reset @s dmg_taken_absorbed




execute as @s[tag=!boss] if score #armor_active .data matches 0 run data remove storage f_mc:combat data.display.bar
execute if score #armor_active .data matches ..0 at @s[tag=dragon,tag=!res,tag=!vul,tag=!superarmor] run tag @s add downed

execute if score #resist .data matches 1.. unless score #armor_active .data matches 1.. run function lzenl:f_mc/gameplay/combat/armor/absorb_only























function lzenl:f_mc/gameplay/combat/armor/display_def









execute if score #dmg_original .data matches 0 run return fail
 

execute as @s[type=player] run return run function lzenl:f_mc/gameplay/combat/armor/player_ouchy

execute store result score #hp .data run data get entity @s Health 10000

scoreboard players operation #hp .data += #dmg_original .data

tag @s add dmg

execute at @s if score #hp .data matches ..0 run return run execute on attacker run damage @n[tag=dmg] 10000 generic by @s from @s

tag @s remove dmg

execute store result entity @s Health int 0.0001 run scoreboard players get #hp .data

