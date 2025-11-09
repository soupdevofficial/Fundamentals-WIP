##
 # get_weakness.mcfunction
 # 
 #
 # Created by .
##

execute as @s[tag=dragon,tag=superarmor] run return fail

scoreboard players operation #timer_old .data = #timer .data
execute store result score #timer .data run time query gametime
scoreboard players operation #timer_delta .data = #timer .data

scoreboard players operation #timer_delta .data -= #timer_old .data
execute if score #timer_delta .data matches ..-1 run scoreboard players operation #timer_delta .data *= #vt_-1 .data

execute if score #timer_delta .data < #cooldown .data run return run data modify storage temp data.text[0].text set value "🛡 "

scoreboard players set #cooldown .data 2000
execute on attacker store result score #attack_speed .data run attribute @s minecraft:attack_speed get 100
scoreboard players operation #cooldown .data /= #attack_speed .data






data remove storage f_mc:combat data.display.bar

execute store result score #armor_resistance .data run attribute @s minecraft:armor_toughness get 4
scoreboard players add #armor_resistance .data 2

execute store result score #armor_dmg_prev .data run attribute @s minecraft:armor modifier value get dmg -1000



attribute @s minecraft:armor modifier remove dmg

scoreboard players set #armor_dmg .data 10000
scoreboard players operation #armor_dmg .data += #dmg .data
scoreboard players operation #armor_dmg .data *= #cooldown .data
execute store result score #armor_max_amount .data run attribute @s minecraft:armor get 1




scoreboard players operation #armor_dmg .data /= #armor_resistance .data


execute unless score #armor_break .data matches 1 run scoreboard players set #armor_dmg .data 0

execute store result storage temp data.macro double -0.001 run scoreboard players operation #armor_dmg_prev .data += #armor_dmg .data






function lzenl:f_mc/gameplay/combat/armor/reduce_armor with storage temp data
execute store result score #armor_current .data run attribute @s minecraft:armor get 10
scoreboard players set #armor_max .data 3
scoreboard players operation #armor_current .data /= #armor_max_amount .data


scoreboard players operation #armor_current .data *= #armor_max .data
scoreboard players operation #armor_display .data = #armor_current .data 


scoreboard players set #armor_max .data 30

function lzenl:f_mc/gameplay/combat/armor/display

execute store result score #armor_active .data run attribute @s minecraft:armor get 1
execute if score #armor_active .data matches ..0 at @s run playsound item.shield.break player @a ~ ~ ~ 10 0 1
execute if score #armor_active .data matches ..0 at @s run function lzenl:f_mc/gameplay/combat/dmg_indicator {text:'{text:"#BREAK",color:"red"}'}

