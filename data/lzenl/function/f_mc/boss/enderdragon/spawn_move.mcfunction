##
 # spawn_move.mcfunction
 # 
 #
 # Created by .
##


execute anchored eyes facing entity @n[type=area_effect_cloud,tag=dragon_center,distance=..300] eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^1 ~ ~



execute if score @s died matches 15.. run kill @s

particle reverse_portal ~ ~ ~ 5.0 5.0 5.0 0.1 5 force @a

tp @e[type=minecraft:block_display,tag=dragon] ~ ~1.5 ~

execute rotated ~ 0 as @e[type=minecraft:block_display,tag=dragon] run rotate @s ~ ~

execute as @e[type=minecraft:block_display,tag=dragon] at @s on passengers run rotate @s ~90 ~



execute if score @s died matches 1.. as @a[distance=..100] at @s run function lzenl:f_mc/gameplay/camera/shake/start


execute unless entity @n[type=area_effect_cloud,tag=dragon_center,distance=..300] run kill @s
execute if entity @n[type=area_effect_cloud,tag=dragon_center,distance=..20] unless block ~ ~-2 ~ #air run function lzenl:f_mc/boss/enderdragon/end_move