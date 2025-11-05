##
 # makeshift_axe.mcfunction
 # 
 #
 # Created by .
##
clear @p[distance=..1] minecraft:wooden_pickaxe[minecraft:item_name="Brittle Stick"] 6

playsound minecraft:block.bamboo_wood_door.open player @a[distance=..10] ~ ~ ~ 5 2


give @p[distance=..1] brick[consumable={consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},custom_data={item:{id:13b,type:3}},item_model="minecraft:campfire",item_name="Small Campfire"] 1



advancement grant @p[distance=..1] only lzenl:game/2_craft