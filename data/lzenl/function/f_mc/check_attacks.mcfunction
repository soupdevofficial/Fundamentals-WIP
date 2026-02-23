##
 # check_interaction.mcfunction
 # 
 #
 # Created by .
##

advancement revoke @s only lzenl:f_mc/check/attacks


## fishing
 execute as @e[tag=fundamentals.fishing.reel,type=interaction,distance=..10] if data entity @s attack at @s run function lzenl:fishing/reel
## 

## Blocks

 #sticks
 execute as @e[tag=fundamentals.block.stick,type=interaction,distance=..7] if data entity @s attack at @s run function lzenl:f_mc/blocks/stick/break

 #rock/pebble
 execute as @e[tag=fundamentals.block.rock,type=interaction,distance=..7] if data entity @s attack at @s run function lzenl:f_mc/blocks/rock/break

 #campfire
 execute as @e[tag=fundamentals.block.small_campfire,type=interaction,distance=..7] if data entity @s attack at @s run function lzenl:f_mc/blocks/small_campfire/break

 #clay molds
 execute as @e[tag=fundamentals.block.wet_clay_mold,type=interaction,distance=..7] if data entity @s attack at @s run function lzenl:f_mc/blocks/clay_mold_wet/break
 execute as @e[tag=fundamentals.block.dry_clay_mold,type=interaction,distance=..7] if data entity @s attack at @s run function lzenl:f_mc/blocks/clay_mold_dry/break
 execute as @e[tag=fundamentals.block.clay_mold,type=interaction,distance=..7] if data entity @s attack at @s run function lzenl:f_mc/blocks/clay_mold/break
##

## Heroes
 #aurora
 execute as @e[tag=fundamentals.heroes.aurora,type=interaction,distance=..7] if data entity @s attack run function lzenl:f_mc/gameplay/combat/hero/aurora/find
##

execute as @e[type=interaction,distance=..7] if data entity @s attack run data remove entity @s attack