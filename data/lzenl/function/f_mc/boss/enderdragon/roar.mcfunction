##
 # roar.mcfunction
 # 
 #
 # Created by .
##

execute as @a[distance=..50,tag=!dragon] at @s run function lzenl:f_mc/gameplay/camera/shake/start

effect give @e[distance=..20,tag=!dragon,type=!block_display] weakness 5 1 true



execute as @e[distance=..18,tag=!dragon,type=!block_display] run attribute @s knockback_resistance modifier add dragon_roar -50 add_multiplied_total



execute as @e[distance=..18,tag=!dragon,type=!block_display] run damage @s 1 minecraft:player_attack by @n[type=block_display,tag=dragon,distance=..18] from @n[type=minecraft:block_display,tag=dragon_root,distance=..15] 



execute as @e[distance=..18,tag=!dragon,type=!block_display] run attribute @s knockback_resistance modifier remove dragon_roar