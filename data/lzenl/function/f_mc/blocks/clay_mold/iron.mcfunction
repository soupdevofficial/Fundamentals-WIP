##
 # get.mcfunction
 # 
 #
 # Created by .
##


execute if score @s .data matches 5 run return run summon item ~ ~0.1 ~ {PickupDelay:8,Motion:[0.0,0.25,0.0],Item:{id:"minecraft:shears",count:1,components:{"minecraft:item_name":"Small Iron Shears","minecraft:max_damage":119}}}
#shears

execute if score @s .data matches 8 run return run summon item ~ ~0.1 ~ {PickupDelay:8,Motion:[0.0,0.25,0.0],Item:{id:"minecraft:iron_ingot"}}
#ingot


execute on target unless items entity @s weapon.mainhand wooden_pickaxe[item_name="Wooden Handle",item_model="stick"] run return fail


execute on target run item modify entity @s weapon.mainhand {"function": "minecraft:set_count","count": -1,"add": true}


execute if score @s .data matches 1 run return run summon item ~ ~0.1 ~ {PickupDelay:8,Motion:[0.0,0.25,0.0],Item:{id:"minecraft:iron_sword"}}
#sword

execute if score @s .data matches 2 run return run summon item ~ ~0.1 ~ {PickupDelay:8,Motion:[0.0,0.25,0.0],Item:{id:"minecraft:iron_axe"}}
#axe

execute if score @s .data matches 3 run return run summon item ~ ~0.1 ~ {PickupDelay:8,Motion:[0.0,0.25,0.0],Item:{id:"minecraft:iron_pickaxe"}}
#pickaxe


execute if score @s .data matches 4 run return run summon item ~ ~0.1 ~ {PickupDelay:8,Motion:[0.0,0.25,0.0],Item:{id:"minecraft:iron_hoe"}}
#hoe

execute if score @s .data matches 6 run return run summon item ~ ~0.1 ~ {PickupDelay:8,Motion:[0.0,0.25,0.0],Item:{id:"minecraft:iron_axe",count:1,components:{"minecraft:item_name":"Small Iron Hammer","minecraft:attribute_modifiers":[{id:"base_attack_damage",type:"attack_damage",amount:5,operation:"add_value",slot:"mainhand",display:{type:"default"}},{id:"base_attack_speed",type:"attack_speed",amount:-2.5,operation:"add_value",slot:"mainhand",display:{type:"default"}}]}}}
#hammer

execute if score @s .data matches 7 run return run summon item ~ ~0.1 ~ {PickupDelay:8,Motion:[0.0,0.25,0.0],Item:{id:"minecraft:iron_axe",count:1,components:{"minecraft:item_name":"Small Iron Saw","minecraft:attribute_modifiers":[{id:"base_attack_damage",type:"attack_damage",amount:4,operation:"add_value",slot:"mainhand",display:{type:"default"}},{id:"base_attack_speed",type:"attack_speed",amount:-3,operation:"add_value",slot:"mainhand",display:{type:"default"}}],"minecraft:item_model":"iron_horse_armor"}}}
#saw


execute if score @s .data matches 9 run return run summon item ~ ~0.1 ~ {PickupDelay:8,Motion:[0.0,0.25,0.0],Item:{id:"minecraft:iron_spear"}}
#spear


execute if score @s .data matches 10 run return run summon item ~ ~0.1 ~ {PickupDelay:8,Motion:[0.0,0.25,0.0],Item:{id:"minecraft:iron_shovel"}}
#shovel