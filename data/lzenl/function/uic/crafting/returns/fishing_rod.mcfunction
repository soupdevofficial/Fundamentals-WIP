##
 # bloomery.mcfunction
 # 
 #
 # Created by .
##
clear @p[distance=..1,gamemode=!creative] stick 3
clear @p[distance=..1,gamemode=!creative] string 2

playsound minecraft:entity.villager.work_fletcher master @a[distance=..10] ~ ~ ~ 1 1.5

give @p[distance=..1] fishing_rod



advancement grant @p[distance=..1] only lzenl:game/2_craft
