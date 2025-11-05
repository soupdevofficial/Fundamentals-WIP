##
 # get.mcfunction
 # 
 #
 # Created by .
##




execute if score @s .data matches 5 run return run summon item ~ ~0.1 ~ {PickupDelay:8,Motion:[0.0,0.25,0.0],Item:{id:"minecraft:shears",count:1,components:{"minecraft:item_name":"Small Golden Shears","minecraft:max_damage":59}}}
#shears

execute if score @s .data matches 8 run return run summon item ~ ~0.1 ~ {PickupDelay:8,Motion:[0.0,0.25,0.0],Item:{id:"minecraft:gold_ingot"}}
#ingot


execute on target unless items entity @s weapon.mainhand wooden_pickaxe[item_name="Wooden Handle",item_model="stick"] run return fail


execute on target run item modify entity @s weapon.mainhand {"function": "minecraft:set_count","count": -1,"add": true}


execute if score @s .data matches 1 run return run summon item ~ ~0.1 ~ {PickupDelay:8,Motion:[0.0,0.25,0.0],Item:{id:"minecraft:golden_sword"}}
#sword

execute if score @s .data matches 2 run return run summon item ~ ~0.1 ~ {PickupDelay:8,Motion:[0.0,0.25,0.0],Item:{id:"minecraft:golden_axe"}}
#axe

execute if score @s .data matches 3 run return run summon item ~ ~0.1 ~ {PickupDelay:8,Motion:[0.0,0.25,0.0],Item:{id:"minecraft:golden_pickaxe"}}
#pickaxe


execute if score @s .data matches 4 run return run summon item ~ ~0.1 ~ {PickupDelay:8,Motion:[0.0,0.25,0.0],Item:{id:"minecraft:golden_hoe"}}
#hoe

execute if score @s .data matches 6 run return run summon item ~ ~0.1 ~ {PickupDelay:8,Motion:[0.0,0.25,0.0],Item:{id:"minecraft:golden_axe",components:{"minecraft:item_name":"Small Golden Hammer"}}}
#hammer

execute if score @s .data matches 7 run return run summon item ~ ~0.1 ~ {PickupDelay:8,Motion:[0.0,0.25,0.0],Item:{id:"minecraft:golden_horse_armor",components:{"minecraft:item_name":"Small Golden Saw"}}}
#saw
