##
 # break.mcfunction
 # 
 #
 # Created by .
##
execute on target run advancement grant @s only lzenl:game/2_pickup

execute on vehicle run kill @s

kill @s

summon item ~ ~ ~ {Motion:[0.0,0.25,0.0],Item:{id:"minecraft:wooden_pickaxe",count:1,components:{"minecraft:damage":0,"minecraft:repair_cost":99,"minecraft:max_damage":15,"minecraft:item_model":"stone_button","minecraft:tool":{default_mining_speed:1.1,damage_per_block:5,rules:[{speed:2,correct_for_drops:true,blocks:"#logs"},{speed:0.5,correct_for_drops:false,blocks:"#dirt"},{speed:1,correct_for_drops:false,blocks:"#base_stone_overworld"}]},"minecraft:item_name":"Small Stone Pebble","minecraft:weapon":{disable_blocking_for_seconds:0,item_damage_per_attack:1},"minecraft:attribute_modifiers":[{id:"minecraft:base_attack_damage",type:"attack_damage",amount:1,operation:"add_value",slot:"mainhand"},{id:"minecraft:base_attack_speed",type:"attack_speed",amount:-3,operation:"add_value",slot:"mainhand"}]}}}

playsound block.stone.step block @a ~ ~ ~ 1 1

