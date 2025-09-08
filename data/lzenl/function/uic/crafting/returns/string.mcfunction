##
 # stone_axe.mcfunction
 # 
 #
 # Created by .
##




clear @p[distance=..1] poisonous_potato[item_name="Grass Fiber"] 3



give @p[distance=..1] string

playsound minecraft:block.tripwire.detach master @a[distance=..10] ~ ~ ~ 1 0
advancement grant @p[distance=..1] only lzenl:game/2_craft
