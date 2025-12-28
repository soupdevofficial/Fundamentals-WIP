##
 # stone_axe.mcfunction
 # 
 #
 # Created by .
##



clear @p[distance=..1,gamemode=!creative] minecraft:wooden_pickaxe[minecraft:item_name="Small Stone Pebble"] 2

clear @p[distance=..1,gamemode=!creative] string 4

clear @p[distance=..1,gamemode=!creative] minecraft:wooden_pickaxe[minecraft:item_name="Wooden Handle"] 1



give @p[distance=..1] stone_pickaxe



playsound minecraft:entity.villager.work_fletcher master @a[distance=..10] ~ ~ ~ 1 0.5
advancement grant @p[distance=..1] only lzenl:game/2_craft
advancement grant @p[distance=..1] only lzenl:game/3_stoneage