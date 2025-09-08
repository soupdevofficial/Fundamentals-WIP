##
 # fill.mcfunction
 # 
 #
 # Created by .
##



tp @s ^ ^0.2 ^0.5 facing entity @n[type=marker,tag=fd_rift,distance=..20] feet

particle reverse_portal ~ ~ ~ 0.05 0.05 0.05 0.01 1

execute unless entity @n[type=marker,tag=fd_rift,distance=..0.75] run return fail


playsound minecraft:block.respawn_anchor.set_spawn block @a ~ ~ ~ 0.5 2
particle end_rod ~ ~ ~ 0 0 0 1 15
kill @s


execute store result score #close .data run random value 1..10

execute unless score #close .data matches 1 run return fail


execute as @e[tag=fd_rift,type=marker,limit=1,distance=..1] run kill @s

playsound block.end_gateway.spawn
summon item ~ ~ ~ {Item:{id:"minecraft:ender_eye",count:1}}

particle portal ~ ~ ~ 0 0 0 1 15
