##
 # sharp_stone_pebble.mcfunction
 # 
 #
 # Created by .
##
clear @p[distance=..1] minecraft:wooden_pickaxe[minecraft:item_name="Small Stone Pebble"] 1

playsound minecraft:block.dripstone_block.fall player @a[distance=..10] ~ ~ ~ 1 2

give @p[distance=..1] wooden_pickaxe[repair_cost=99,max_damage=5,item_model="polished_blackstone_button",tool={default_mining_speed:1.1,damage_per_block:5,rules:[{speed:2,correct_for_drops:true,blocks:"#mineable/axe"},{speed:2,correct_for_drops:false,blocks:"#minecraft:mineable/pickaxe"},{speed:0.5,correct_for_drops:false,blocks:"#minecraft:mineable/shovel"},{speed:0.5,correct_for_drops:false,blocks:"#minecraft:mineable/hoe"}]},item_name="Sharp Stone Pebble",weapon={disable_blocking_for_seconds:0,item_damage_per_attack:1},attribute_modifiers=[{id:"minecraft:base_attack_damage",type:"attack_damage",amount:2,operation:"add_value",slot:"mainhand"},{id:"minecraft:base_attack_speed",type:"attack_speed",amount:-3,operation:"add_value",slot:"mainhand"}]] 1

advancement grant @p[distance=..1] only lzenl:game/2_craft
