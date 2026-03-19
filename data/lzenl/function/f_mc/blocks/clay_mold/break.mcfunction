##
 # break_check.mcfunction
 # 
 #
 # Created by .
##
execute store result score #return .data run scoreboard players get @s .data

execute on vehicle run function lzenl:f_mc/blocks/kill
playsound block.decorated_pot.break block @a ~ ~ ~ 3 0
particle block{block_state:"flower_pot"} ~ ~ ~ 0.2 0.1 0.2 0.02 10

execute on attacker if entity @s[gamemode=creative] unless predicate lzenl:is_sneaking run return fail



execute if score #return .data matches 1 run return run summon item ~ ~0.5 ~ {Item:{id:"poisonous_potato",count:1b,components:{"!food":{},"minecraft:consumable":{consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},"minecraft:custom_data":{item:{id:7b,type:2},id:1},"minecraft:item_model":"minecraft:brown_carpet","minecraft:item_name":"Ceramic Mold | Shape: [Sword]"}}}
execute if score #return .data matches 2 run return run summon item ~ ~0.5 ~ {Item:{id:"poisonous_potato",count:1b,components:{"!food":{},"minecraft:consumable":{consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},"minecraft:custom_data":{item:{id:7b,type:2},id:2},"minecraft:item_model":"minecraft:brown_carpet","minecraft:item_name":"Ceramic Mold | Shape: [Axe]"}}}
execute if score #return .data matches 3 run return run summon item ~ ~0.5 ~ {Item:{id:"poisonous_potato",count:1b,components:{"!food":{},"minecraft:consumable":{consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},"minecraft:custom_data":{item:{id:7b,type:2},id:3},"minecraft:item_model":"minecraft:brown_carpet","minecraft:item_name":"Ceramic Mold | Shape: [Pickaxe]"}}}
execute if score #return .data matches 4 run return run summon item ~ ~0.5 ~ {Item:{id:"poisonous_potato",count:1b,components:{"!food":{},"minecraft:consumable":{consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},"minecraft:custom_data":{item:{id:7b,type:2},id:4},"minecraft:item_model":"minecraft:brown_carpet","minecraft:item_name":"Ceramic Mold | Shape: [Hoe]"}}}
execute if score #return .data matches 5 run return run summon item ~ ~0.5 ~ {Item:{id:"poisonous_potato",count:1b,components:{"!food":{},"minecraft:consumable":{consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},"minecraft:custom_data":{item:{id:7b,type:2},id:5},"minecraft:item_model":"minecraft:brown_carpet","minecraft:item_name":"Ceramic Mold | Shape: [Small Shears]"}}}
execute if score #return .data matches 6 run return run summon item ~ ~0.5 ~ {Item:{id:"poisonous_potato",count:1b,components:{"!food":{},"minecraft:consumable":{consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},"minecraft:custom_data":{item:{id:7b,type:2},id:6},"minecraft:item_model":"minecraft:brown_carpet","minecraft:item_name":"Ceramic Mold | Shape: [Small Hammer]"}}}
execute if score #return .data matches 7 run return run summon item ~ ~0.5 ~ {Item:{id:"poisonous_potato",count:1b,components:{"!food":{},"minecraft:consumable":{consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},"minecraft:custom_data":{item:{id:7b,type:2},id:7},"minecraft:item_model":"minecraft:brown_carpet","minecraft:item_name":"Ceramic Mold | Shape: [Small Saw]"}}}
execute if score #return .data matches 8 run return run summon item ~ ~0.5 ~ {Item:{id:"poisonous_potato",count:1b,components:{"!food":{},"minecraft:consumable":{consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},"minecraft:custom_data":{item:{id:7b,type:2},id:8},"minecraft:item_model":"minecraft:brown_carpet","minecraft:item_name":"Ceramic Mold | Shape: [Ingot]"}}}
execute if score #return .data matches 9 run return run summon item ~ ~0.5 ~ {Item:{id:"poisonous_potato",count:1b,components:{"!food":{},"minecraft:consumable":{consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},"minecraft:custom_data":{item:{id:7b,type:2},id:9},"minecraft:item_model":"minecraft:brown_carpet","minecraft:item_name":"Ceramic Mold | Shape: [Spear]"}}}
execute if score #return .data matches 10 run return run summon item ~ ~0.5 ~ {Item:{id:"poisonous_potato",count:1b,components:{"!food":{},"minecraft:consumable":{consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},"minecraft:custom_data":{item:{id:7b,type:2},id:10},"minecraft:item_model":"minecraft:brown_carpet","minecraft:item_name":"Ceramic Mold | Shape: [Shovel]"}}}

execute unless score #return .data matches 1..10 run return run summon item ~ ~0.5 ~ {Item:{id:"poisonous_potato",count:1,components:{"!food":{},"minecraft:consumable":{consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},"minecraft:custom_data":{item:{id:7b,type:2},id:11},"minecraft:item_model":"minecraft:brown_carpet","minecraft:item_name":"Ceramic Mold"}}}
















