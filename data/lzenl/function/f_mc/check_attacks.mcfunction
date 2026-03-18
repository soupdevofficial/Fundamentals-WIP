##
 # check_interaction.mcfunction
 # 
 #
 # Created by .
##

advancement revoke @s only lzenl:f_mc/check/attacks
execute as @e[type=interaction,distance=..7] on attacker run tag @s add fundamentals.misc.attacker
schedule function lzenl:f_mc/delayed_conditional 1t

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
  #clay molds
 execute as @e[tag=fundamentals.block.clay_mold,type=interaction,distance=..7] if data entity @s attack at @s run function lzenl:f_mc/blocks/clay_mold/break_root


 #clay bucket
 execute as @e[tag=fundamentals.block.clay_bucket,type=interaction,distance=..7] if data entity @s attack at @s run function lzenl:f_mc/blocks/clay_bucket/break

##

## Heroes
 #aurora
 execute as @e[tag=fundamentals.heroes.aurora,type=interaction,distance=..7] if data entity @s attack run function lzenl:f_mc/gameplay/combat/hero/aurora/find
##






execute as @e[type=interaction,distance=..7] if data entity @s attack run data remove entity @s attack