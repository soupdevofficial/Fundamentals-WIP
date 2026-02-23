##
 # roar.mcfunction
 # 
 #
 # Created by .
##

execute as @a[distance=..50,tag=!fundamentals.boss.dragon] at @s run function lzenl:f_mc/gameplay/camera/shake/start

execute as @e[distance=..50,tag=superarmor,limit=1,type=slime] run effect give @e[distance=..20,tag=!fundamentals.boss.dragon,type=!block_display] weakness 5 1 true


execute as @e[distance=..18,tag=!fundamentals.boss.dragon,type=!#not_mob] run attribute @s knockback_resistance modifier add dragon_roar -50 add_multiplied_total



execute as @e[distance=..18,tag=!fundamentals.boss.dragon,type=!#not_mob] run damage @s 1 arrow by @n[type=slime,tag=fundamentals.boss.dragon_hp,distance=..18] from @n[type=minecraft:block_display,tag=fundamentals.boss.dragon_root,distance=..15] 



execute as @e[distance=..18,tag=!fundamentals.boss.dragon,type=!#not_mob] run attribute @s knockback_resistance modifier remove dragon_roar


execute as @s[tag=!comet] run return fail

function lzenl:f_mc/boss/enderdragon/comet_init