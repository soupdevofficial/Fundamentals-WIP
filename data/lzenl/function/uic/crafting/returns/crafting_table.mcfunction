##
 # tweezers.mcfunction
 # 
 #
 # Created by .
##
clear @p[distance=..1] #planks 1
clear @p[distance=..1] leather 1
clear @p[distance=..1] shears[item_name="Small Iron Shears"] 2
clear @p[distance=..1] iron_axe[item_name="Small Iron Hammer"] 2
clear @p[distance=..1] iron_axe[item_name="Small Iron Saw"] 2


give @p[distance=..1] crafting_table


playsound minecraft:entity.villager.work_fletcher master @a[distance=..10] ~ ~ ~ 1 0.5
advancement grant @p[distance=..1] only lzenl:game/7_crafting
advancement grant @p[distance=..1] only lzenl:game/7_crafting