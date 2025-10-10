##
 # walking.mcfunction
 # 
 #
 # Created by .
##
schedule function lzenl:f_mc/boss/enderdragon/walking 1.5s replace

execute in minecraft:the_end at @n[type=block_display,tag=dragon,distance=..10000] run playsound entity.iron_golem.step hostile @a[distance=..50] ~ ~ ~ 50 0
execute in minecraft:the_end at @n[type=block_display,tag=dragon,distance=..10000] run playsound entity.iron_golem.step hostile @a[distance=..50] ~ ~ ~ 50 1