##
 # bloomery.mcfunction
 # 
 #
 # Created by .
##
clear @p[distance=..1] clay_ball 36

playsound minecraft:entity.villager.work_leatherworker master @a[distance=..10] ~ ~ ~ 1 1.5

give @p[distance=..1] wooden_pickaxe[repair_cost=99,!attribute_modifiers,item_name="Wet Bloomery",!tool,max_damage=99,!weapon,consumable={consume_seconds:0.0,animation:"block",sound:"minecraft:intentionally_empty",has_consume_particles:false,on_consume_effects:[]},item_model="gray_concrete_powder"] 1


advancement grant @p[distance=..1] only lzenl:game/2_craft

advancement grant @p[distance=..1] only lzenl:game/4_pottery
advancement grant @p[distance=..1] only lzenl:game/4_pottery/bloomery