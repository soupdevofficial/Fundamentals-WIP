##
 # roar.mcfunction
 # 
 #
 # Created by .
##


scoreboard players set #enlight animation 360

execute positioned ^ ^ ^-28 run function lzenl:f_mc/boss/enderdragon/area_enlight





#lzenl:animations/ender_dragon/

#lzenl:animations/ender_dragon/

execute as @a[distance=..50,tag=!dragon] at @s run function lzenl:f_mc/gameplay/camera/shake/start



execute at @s positioned ^ ^30 ^-28 as @e[distance=..40,tag=!dragon,type=!#not_mob] run damage @s 5 minecraft:arrow by @n[type=slime,tag=dragon,distance=..240]


