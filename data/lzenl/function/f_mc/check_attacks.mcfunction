##
 # check_interaction.mcfunction
 # 
 #
 # Created by .
##

advancement revoke @s only lzenl:f_mc/check/attacks

## Blocks

 #sticks
 execute as @e[tag=stick,type=interaction,distance=..7] if data entity @s attack at @s run function lzenl:f_mc/blocks/stick/break

 #rock/pebble
 execute as @e[tag=rock,type=interaction,distance=..7] if data entity @s attack at @s run function lzenl:f_mc/blocks/rock/break

 #campfire
 execute as @e[tag=small_campfire,type=interaction,distance=..7] if data entity @s attack at @s run function lzenl:f_mc/blocks/small_campfire/break

 #clay molds
 execute as @e[tag=wet_clay_mold,type=interaction,distance=..7] if data entity @s attack at @s run function lzenl:f_mc/blocks/clay_mold_wet/break
 execute as @e[tag=dry_clay_mold,type=interaction,distance=..7] if data entity @s attack at @s run function lzenl:f_mc/blocks/clay_mold_dry/break
 execute as @e[tag=clay_mold,type=interaction,distance=..7] if data entity @s attack at @s run function lzenl:f_mc/blocks/clay_mold/break
##

## Heroes
 #aurora
 execute as @e[tag=aurora,type=interaction,distance=..7] if data entity @s attack run function lzenl:f_mc/gameplay/combat/hero/aurora/find
##

execute as @e[type=interaction,distance=..7] if data entity @s attack run data remove entity @s attack