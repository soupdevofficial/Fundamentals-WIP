##
 # collect.mcfunction
 # 
 #
 # Created by .
##
attribute @s movement_speed modifier remove fishing
attribute @s explosion_knockback_resistance modifier remove fishing
attribute @s jump_strength modifier remove fishing
attribute @s attack_speed modifier remove fishing
execute at @s as @e[tag=fishing.reel,type=interaction,distance=..4] if score @s .id = @p[distance=0] .id run kill @s
execute as @e[distance=..50,tag=fishing,tag=caught,type=armor_stand] if score @s .id = @p[distance=0] .id at @s run function lzenl:fishing/kill2
tag @s remove fish.reeling

execute as @s[tag=!fail] run return fail
title @s subtitle "fishing cancelled"
tag @s remove fail