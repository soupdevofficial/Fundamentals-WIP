##
 # area_enlight.mcfunction
 # 
 #
 # Created by .
##


scoreboard players remove #enlight animation 1


execute positioned ^ ^40 ^34 run particle end_rod ~ ~ ~ ^ ^ ^100000 0.000065 0 force @a


execute at @s positioned ^ ^12 ^-28 as @e[distance=..50,tag=!fundamentals.boss.dragon,type=!#not_mob,tag=!fundamentals.boss.dragon_root,tag=!fundamentals.boss.dragon] at @s run tp @s ~ ~0.05 ~


execute if score #enlight animation matches 1.. rotated ~1 ~ run function lzenl:f_mc/boss/enderdragon/area_enlight



