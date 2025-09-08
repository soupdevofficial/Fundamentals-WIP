##
 # stone_axe.mcfunction
 # 
 #
 # Created by .
##



clear @p[distance=..1] minecraft:wooden_pickaxe[minecraft:item_name="Small Stone Pebble"] 2

clear @p[distance=..1] string 4

clear @p[distance=..1] minecraft:wooden_pickaxe[minecraft:item_name="Wooden Handle"] 1


give @p wooden_pickaxe[tool={default_mining_speed:4,rules:[{correct_for_drops:true,blocks:"#copper_ores"},{correct_for_drops:true,blocks:"#coal_ores"},{correct_for_drops:true,blocks:"#base_stone_overworld"},{correct_for_drops:true,blocks:"#gold_ores"}]},attribute_modifiers=[{id:"base_attack_damage",type:"attack_damage",amount:2,operation:"add_value",slot:"mainhand",display:{type:"default"}},{id:"base_attack_speed",type:"attack_speed",amount:-2.8,operation:"add_value",slot:"mainhand",display:{type:"default"}}],item_model="stone_pickaxe",item_name="Stone Pickaxe"] 1

playsound minecraft:entity.villager.work_fletcher master @a[distance=..10] ~ ~ ~ 1 0.5
advancement grant @p[distance=..1] only lzenl:game/2_craft
advancement grant @p[distance=..1] only lzenl:game/3_stoneage