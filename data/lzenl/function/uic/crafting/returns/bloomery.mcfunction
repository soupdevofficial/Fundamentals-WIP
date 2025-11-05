##
 # bloomery.mcfunction
 # 
 #
 # Created by .
##
clear @p[distance=..1] clay_ball 36

playsound minecraft:entity.villager.work_leatherworker master @a[distance=..10] ~ ~ ~ 1 1.5

give @p[distance=..1] clay_ball[consumable={consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},custom_data={item:{id:3b,type:2}},item_model="minecraft:gray_concrete_powder",item_name="Wet Bloomery"] 1



advancement grant @p[distance=..1] only lzenl:game/2_craft

advancement grant @p[distance=..1] only lzenl:game/4_pottery
advancement grant @p[distance=..1] only lzenl:game/4_pottery/bloomery