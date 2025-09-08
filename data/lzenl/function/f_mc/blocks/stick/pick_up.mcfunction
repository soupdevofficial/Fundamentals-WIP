##
 # break.mcfunction
 # 
 #
 # Created by .
##
execute on target run advancement grant @s only lzenl:game/2_pickup

execute on vehicle run kill @s

kill @s

summon item ~ ~ ~ {Motion:[0.0,0.25,0.0],Item:{id:"minecraft:wooden_pickaxe",count:1,components:{"minecraft:damage":0,"minecraft:repair_cost":99,"minecraft:max_damage":5,"minecraft:item_model":"stick","minecraft:tool":{default_mining_speed:0.01,damage_per_block:5,rules:[]},"minecraft:item_name":"Brittle Stick","minecraft:weapon":{disable_blocking_for_seconds:0,item_damage_per_attack:1},"!attribute_modifiers":{}}}}
playsound block.azalea.place block @a ~ ~ ~ 1 1

