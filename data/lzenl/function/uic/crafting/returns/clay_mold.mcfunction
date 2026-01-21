##
 # clay_mold.mcfunction
 # 
 #
 # Created by .
##

clear @p[distance=..1,gamemode=!creative] clay_ball 6

playsound minecraft:entity.villager.work_leatherworker master @a[distance=..10] ~ ~ ~ 1 1.5


give @p[distance=..1] clay_ball[consumable={consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},custom_data={item:{id:9b,type:2}},item_model="minecraft:gray_carpet",item_name="Wet Clay Mold"] 1



advancement grant @p[distance=..1] only lzenl:game/2_craft
advancement grant @p[distance=..1] only lzenl:game/4_pottery
advancement grant @p[distance=..1] only lzenl:game/4_pottery/clay_mold
advancement grant @p[distance=..1] only lzenl:game/5_master_potter claymold