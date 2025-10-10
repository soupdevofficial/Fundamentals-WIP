##
 # get_weakness.mcfunction
 # 
 #
 # Created by .
##

execute as @s[tag=dragon,tag=superarmor] run return fail



data remove storage f_mc:combat data.display.bar


execute store result score #armor_resistance .data run attribute @s minecraft:armor_toughness get 0.5
scoreboard players add #armor_resistance .data 2

execute store result score #armor_dmg_prev .data run attribute @s minecraft:armor modifier value get dmg 10
attribute @s minecraft:armor modifier remove dmg
execute store result score #armor_dmg .data run attribute @s minecraft:armor get -10
execute store result score #armor_max .data run attribute @s minecraft:armor get 2


#FF4326
#snowball
#ender eye
##

scoreboard players operation #armor_dmg .data /= #armor_resistance .data
execute store result storage temp data.macro double 0.1 run scoreboard players operation #armor_dmg_prev .data += #armor_dmg .data






function lzenl:f_mc/gameplay/combat/armor/reduce_armor with storage temp data
execute store result score #armor_display .data run attribute @s minecraft:armor get 2
scoreboard players remove #armor_max .data 1

function lzenl:f_mc/gameplay/combat/armor/display

execute store result score #armor_active .data run attribute @s minecraft:armor get 10
execute if score #armor_active .data matches ..0 at @s run playsound item.shield.break player @a ~ ~ ~ 10 0 1