##
 # makeshift_axe.mcfunction
 # 
 #
 # Created by .
##
clear @p[distance=..1] minecraft:wooden_pickaxe[minecraft:item_name="Brittle Stick"] 6

playsound minecraft:block.bamboo_wood_door.open player @a[distance=..10] ~ ~ ~ 5 2


give @p[distance=..1] wooden_pickaxe[repair_cost=99,!attribute_modifiers,item_model="minecraft:campfire",item_name="Small Campfire",consumable={consume_seconds:0.0,animation:"block",has_consume_particles:false,sound:"minecraft:intentionally_empty"}] 1


advancement grant @p[distance=..1] only lzenl:game/2_craft