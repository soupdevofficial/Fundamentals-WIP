##
 # ai_check.mcfunction
 # 
 #
 # Created by .
##




execute unless entity @e[type=slime,tag=fundamentals.boss.dragon_hp,distance=..300] run return run function lzenl:animations/ender_dragon/a/down/play_anim


execute as @e[tag=fundamentals.boss.dragon_root,type=block_display,distance=..100,limit=1] at @s positioned ~ ~-1 ~ run tp @e[tag=fundamentals.boss.dragon,type=slime,distance=..300] ^ ^ ^-3


scoreboard players set #random .data 0
execute as @n[type=slime,tag=fundamentals.boss.dragon_hp,tag=downed,distance=..300] run return run function lzenl:animations/ender_dragon/a/down/play_anim



execute unless entity @p[tag=target,distance=..300] run tag @p add target
execute as @p[tag=target,distance=..20] store result score #random .data run random value 1..80


execute as @p[tag=target,distance=21..40] store result score #random .data run random value 50..100

execute as @p[tag=target,distance=41..100] store result score #random .data run random value 81..100

execute as @p[tag=target,distance=101..] store result score #random .data run random value 101..110







execute if score #random .data matches 1..30 run return run function lzenl:animations/ender_dragon/a/swipe_left/play_anim
execute if score #random .data matches 31..60 run return run function lzenl:animations/ender_dragon/a/swipe_right/play_anim
execute if score #random .data matches 61..65 run return run function lzenl:animations/ender_dragon/a/close_fire/play_anim
execute if score #random .data matches 66..66 run return run function lzenl:animations/ender_dragon/a/stomp/play
execute if score #random .data matches 67..73 run return run function lzenl:animations/ender_dragon/a/roar/play
execute if score #random .data matches 74..80 run return run function lzenl:animations/ender_dragon/a/gravitas/play
execute if score #random .data matches 81..85 run return run function lzenl:animations/ender_dragon/a/beam/play_anim
execute if score #random .data matches 86..90 run return run function lzenl:animations/ender_dragon/a/walk/play_anim

execute if score #random .data matches 91..100 run return run function lzenl:animations/ender_dragon/a/jump/play_anim



execute if score #random .data matches 101..105 run return run function lzenl:animations/ender_dragon/a/roar/play
execute if score #random .data matches 106..110 run return run function lzenl:animations/ender_dragon/a/walk/play_anim







function lzenl:animations/ender_dragon/a/jump/play_anim
