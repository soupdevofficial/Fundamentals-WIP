##
 # bloomery.mcfunction
 # 
 #
 # Created by .
##
clear @p[distance=..1,gamemode=!creative] clay_ball 5

playsound minecraft:entity.villager.work_leatherworker master @a[distance=..10] ~ ~ ~ 1 1.5


give @p[distance=..1] clay_ball[consumable={consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},custom_data={item:{id:6b,type:2}},item_model="minecraft:cauldron",item_name="Wet Clay Bucket"] 1

advancement grant @p[distance=..1] only lzenl:game/2_craft
advancement grant @p[distance=..1] only lzenl:game/4_pottery
advancement grant @p[distance=..1] only lzenl:game/4_pottery/clay_bucket
advancement grant @p[distance=..1] only lzenl:game/5_master_potter claybucket