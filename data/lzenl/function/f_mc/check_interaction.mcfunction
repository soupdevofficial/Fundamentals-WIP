##
 # check_interaction.mcfunction
 # 
 #
 # Created by .
##

advancement revoke @s only lzenl:f_mc/check/interact

## Blocks

 #rock/pebble/sticks
 execute as @e[tag=stick,type=interaction,distance=..7] if data entity @s interaction at @s run function lzenl:f_mc/blocks/stick/pick_up
 execute as @e[tag=rock,type=interaction,distance=..7] if data entity @s interaction at @s run function lzenl:f_mc/blocks/rock/pick_up
 #campfire
 execute as @e[tag=small_campfire,type=interaction,distance=..7] if data entity @s interaction at @s run function lzenl:f_mc/blocks/small_campfire/lit
 #wet clay mold
 execute as @e[tag=wet_clay_mold,type=interaction,distance=..7] if data entity @s interaction at @s run function lzenl:f_mc/blocks/clay_mold_wet/mold

 #filled clay mold
 execute as @e[tag=fin,tag=clay_mold,type=interaction,distance=..7] if data entity @s interaction at @s run function lzenl:f_mc/blocks/clay_mold/get







##

## Heroes

 execute as @e[tag=aurora,type=interaction,distance=..7] if data entity @s interaction run function lzenl:f_mc/gameplay/combat/hero/aurora/find




##


execute as @e[type=interaction,distance=..7] if data entity @s interaction run data remove entity @s interaction