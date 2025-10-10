##
 # ai_check.mcfunction
 # 
 #
 # Created by .
##







execute as @e[tag=dragon_root,type=block_display,distance=..100,limit=1] at @s positioned ~ ~-1 ~ run tp @e[tag=dragon,type=slime,distance=..300] ^ ^ ^-3


scoreboard players set #random .data 0
execute as @n[type=slime,tag=dragon_hp,tag=downed,distance=..300] run return run function lzenl:animations/ender_dragon/a/down/play_anim

execute unless entity @p[tag=target,distance=..200] run tag @p add target
execute as @p[tag=target,distance=..20] store result score #random .data run random value 1..80


execute as @p[tag=target,distance=21..40] store result score #random .data run random value 50..100

execute as @p[tag=target,distance=41..100] store result score #random .data run random value 81..100








execute if score #random .data matches 1..20 run return run function lzenl:animations/ender_dragon/a/swipe_left/play_anim
execute if score #random .data matches 21..40 run return run function lzenl:animations/ender_dragon/a/swipe_right/play_anim
execute if score #random .data matches 41..45 run return run function lzenl:animations/ender_dragon/a/close_fire/play_anim
execute if score #random .data matches 46..55 run return run function lzenl:animations/ender_dragon/a/stomp/play
execute if score #random .data matches 56..75 run return run function lzenl:animations/ender_dragon/a/roar/play
execute if score #random .data matches 76..80 run return run function lzenl:animations/ender_dragon/a/gravitas/play
execute if score #random .data matches 81..85 run return run function lzenl:animations/ender_dragon/a/walk/play_anim
execute if score #random .data matches 86..90 run return run function lzenl:animations/ender_dragon/a/beam/play_anim
execute if score #random .data matches 91..100 run return run function lzenl:animations/ender_dragon/a/jump/play_anim










function lzenl:animations/ender_dragon/a/jump/play_anim
