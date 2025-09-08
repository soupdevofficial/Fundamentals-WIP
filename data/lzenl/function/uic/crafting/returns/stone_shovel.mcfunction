##
 # stone_axe.mcfunction
 # 
 #
 # Created by .
##



clear @p[distance=..1] minecraft:wooden_pickaxe[minecraft:item_name="Small Stone Pebble"] 1

clear @p[distance=..1] string 3

clear @p[distance=..1] minecraft:wooden_pickaxe[minecraft:item_name="Wooden Handle"] 1


give @p[distance=..1] stone_shovel[minecraft:item_name="Stone Shovel",minecraft:item_model="stone_shovel",max_damage=131]

playsound minecraft:entity.villager.work_fletcher master @a[distance=..10] ~ ~ ~ 1 0.5
advancement grant @p[distance=..1] only lzenl:game/2_craft
advancement grant @p[distance=..1] only lzenl:game/3_stoneage