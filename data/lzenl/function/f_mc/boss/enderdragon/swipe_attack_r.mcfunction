##
 # swipe_attack.mcfunction
 # 
 #
 # Created by .
##

particle crit ~ ~1 ~ 0 0 0 1 0
particle crit ~ ~-1 ~ 0 0 0 1 0
particle crit ~ ~ ~ 0 0 0 1 0


execute positioned ^1 ^ ^1 as @e[distance=..4,tag=!fundamentals.boss.dragon,type=!#not_mob] run damage @s 20 mob_attack by @n[type=slime,tag=fundamentals.boss.dragon,distance=..240] from @n[type=slime,tag=fundamentals.boss.dragon,distance=..240]



execute facing entity @s[distance=..7] eyes positioned ^-0.5 ^-0.1 ^-0.025 run function lzenl:f_mc/boss/enderdragon/swipe_attack_r
