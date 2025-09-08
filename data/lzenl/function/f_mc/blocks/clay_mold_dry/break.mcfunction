##
 # break.mcfunction
 # 
 #
 # Created by .
##



execute unless score @s .data matches 1..8 run summon item ~ ~ ~ {Tags:["set_data"],Item:{id:"wooden_pickaxe",components:{repair_cost:99,"!attribute_modifiers":{},item_name:"Dry Clay Mold","!tool":{},max_damage:99,"!weapon":{},consumable:{consume_seconds:0.0,animation:"block",sound:"minecraft:intentionally_empty",has_consume_particles:false,on_consume_effects:[]},item_model:"minecraft:light_gray_carpet"}},Motion:[0.0,0.25,0.0]}

execute if score @s .data matches 1..8 run summon item ~ ~ ~ {Tags:["set_data"],Item:{id:"wooden_pickaxe",components:{repair_cost:99,"!attribute_modifiers":{},item_name:"Dry Clay Mold [shaped]","!tool":{},max_damage:99,"!weapon":{},consumable:{consume_seconds:0.0,animation:"block",sound:"minecraft:intentionally_empty",has_consume_particles:false,on_consume_effects:[]},item_model:"minecraft:light_gray_carpet"}},Motion:[0.0,0.25,0.0]}



execute as @n[tag=set_data,distance=..1,type=item] run execute store result entity @s Item.components.minecraft:custom_data.id int 1 run scoreboard players get @n[tag=dry_clay_mold,type=interaction,distance=..0.5] .data




execute on vehicle run function lzenl:f_mc/blocks/kill
playsound block.sand.break block @a ~ ~ ~ 3 0
particle block{block_state:"light_gray_concrete_powder"} ~ ~ ~ 0.2 0.1 0.2 0.02 10


