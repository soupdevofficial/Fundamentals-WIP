##
 # area_enlight.mcfunction
 # 
 #
 # Created by .
##


scoreboard players remove #enlight animation 1


execute positioned ^ ^40 ^34 run particle end_rod ~ ~ ~ ^ ^ ^100000 0.000065 0 force @a


execute at @s positioned ^ ^12 ^-28 as @e[distance=..40,tag=!dragon,type=!item_display,type=!block_display,type=!lightning_bolt,tag=!dragon_root,tag=!dragon] at @s run tp @s ~ ~0.1 ~


execute if score #enlight animation matches 1.. rotated ~1 ~ run function lzenl:f_mc/boss/enderdragon/area_enlight



