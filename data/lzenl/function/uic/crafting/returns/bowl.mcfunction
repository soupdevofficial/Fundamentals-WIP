##
 # bloomery.mcfunction
 # 
 #
 # Created by .
##
clear @p[distance=..1,gamemode=!creative] #planks 1

playsound minecraft:entity.villager.work_fletcher master @a[distance=..10] ~ ~ ~ 1 1.5

give @p[distance=..1] bowl 1



advancement grant @p[distance=..1] only lzenl:game/2_craft
