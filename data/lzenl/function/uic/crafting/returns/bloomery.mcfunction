##
 # bloomery.mcfunction
 # 
 #
 # Created by .
##
clear @p[distance=..1,gamemode=!creative] packed_mud 8

playsound block.mud.break master @a[distance=..10] ~ ~ ~ 1 1.5

give @p[distance=..1] clay_ball[consumable={consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},custom_data={item:{id:3b,type:2}},item_model="mud_bricks",item_name="Bloomery"] 1



advancement grant @p[distance=..1] only lzenl:game/2_craft

advancement grant @p[distance=..1] only lzenl:game/4_pottery
advancement grant @p[distance=..1] only lzenl:game/4_pottery/bloomery
advancement grant @p[distance=..1] only lzenl:game/5_master_potter claybloomery