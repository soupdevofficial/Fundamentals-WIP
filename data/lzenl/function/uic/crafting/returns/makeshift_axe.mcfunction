##
 # makeshift_axe.mcfunction
 # 
 #
 # Created by .
##
clear @p[distance=..1,gamemode=!creative] string 2
clear @p[distance=..1,gamemode=!creative] minecraft:wooden_pickaxe[minecraft:item_name="Brittle Stick"] 1
clear @p[distance=..1,gamemode=!creative] minecraft:wooden_pickaxe[minecraft:item_name="Sharp Stone Pebble"] 1

playsound minecraft:entity.villager.work_fletcher master @a[distance=..10] ~ ~ ~ 1 0.5

give @p[distance=..1] wooden_axe[damage=0,repair_cost=99,attribute_modifiers=[{id:"minecraft:base_attack_damage",type:"attack_damage",amount:3,operation:"add_value",slot:"mainhand"},{id:"minecraft:base_attack_speed",type:"attack_speed",amount:-3.35,operation:"add_value",slot:"mainhand"}],item_model="minecraft:stone_axe",item_name="Makeshift Stone Axe",tool={default_mining_speed:0.5,damage_per_block:2,rules:[{speed:2,correct_for_drops:true,blocks:"#mineable/axe"},{speed:3,correct_for_drops:false,blocks:"#minecraft:mineable/pickaxe"},{speed:1.5,correct_for_drops:false,blocks:"#minecraft:mineable/shovel"},{speed:1.5,correct_for_drops:false,blocks:"#minecraft:mineable/hoe"}]},max_damage=12,weapon={disable_blocking_for_seconds:0.25,item_damage_per_attack:2}] 1

advancement grant @p[distance=..1] only lzenl:game/2_craft