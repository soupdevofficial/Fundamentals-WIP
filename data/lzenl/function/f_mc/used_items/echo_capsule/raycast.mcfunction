##
 # raycast.mcfunction
 # 
 #
 # Created by .
##


particle dust_color_transition{from_color:[0.729,0.000,0.000],scale:1,to_color:[0.871,0.400,0.400]} ~ ~ ~ 0.0 0.0 0.0 0 0 force @a[distance=..10]
scoreboard players remove #count .data 1

execute unless score #count .data matches 1.. run return run playsound minecraft:block.ender_chest.open player @a[distance=..20] ~ ~ ~ 10 1.5

execute facing entity @p[tag=owner,distance=..5] feet positioned ^0.125 ^0.35 ^0.25 run function lzenl:f_mc/used_items/echo_capsule/raycast