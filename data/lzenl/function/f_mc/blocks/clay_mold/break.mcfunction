##
 # break_check.mcfunction
 # 
 #
 # Created by .
##


execute store result score #return .data run scoreboard players get @n[tag=fundamentals.block.clay_mold,type=interaction,distance=..0.5] .data

execute on passengers as @s[tag=fundamentals.block.clay_mold] if score @s active matches 1.. run fill ~ ~ ~ ~ ~ ~ lava[level=1] replace #replaceable
execute on passengers as @s[tag=fundamentals.block.clay_mold] if score @s active matches 1.. run function lzenl:f_mc/blocks/kill

execute if score #return .data matches 1 run summon item ~ ~0.5 ~ {Item:{id:"minecraft:clay_ball",Count:1b,components:{"minecraft:consumable":{consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},"minecraft:custom_data":{item:{id:7b,type:2},id:1},"minecraft:item_model":"minecraft:brown_carpet","minecraft:item_name":"Clay Mold | Shape: [Sword]"}}}
execute if score #return .data matches 2 run summon item ~ ~0.5 ~ {Item:{id:"minecraft:clay_ball",Count:1b,components:{"minecraft:consumable":{consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},"minecraft:custom_data":{item:{id:7b,type:2},id:2},"minecraft:item_model":"minecraft:brown_carpet","minecraft:item_name":"Clay Mold | Shape: [Axe]"}}}
execute if score #return .data matches 3 run summon item ~ ~0.5 ~ {Item:{id:"minecraft:clay_ball",Count:1b,components:{"minecraft:consumable":{consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},"minecraft:custom_data":{item:{id:7b,type:2},id:3},"minecraft:item_model":"minecraft:brown_carpet","minecraft:item_name":"Clay Mold | Shape: [Pickaxe]"}}}
execute if score #return .data matches 4 run summon item ~ ~0.5 ~ {Item:{id:"minecraft:clay_ball",Count:1b,components:{"minecraft:consumable":{consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},"minecraft:custom_data":{item:{id:7b,type:2},id:4},"minecraft:item_model":"minecraft:brown_carpet","minecraft:item_name":"Clay Mold | Shape: [Hoe]"}}}
execute if score #return .data matches 5 run summon item ~ ~0.5 ~ {Item:{id:"minecraft:clay_ball",Count:1b,components:{"minecraft:consumable":{consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},"minecraft:custom_data":{item:{id:7b,type:2},id:5},"minecraft:item_model":"minecraft:brown_carpet","minecraft:item_name":"Clay Mold | Shape: [Small Shears]"}}}
execute if score #return .data matches 6 run summon item ~ ~0.5 ~ {Item:{id:"minecraft:clay_ball",Count:1b,components:{"minecraft:consumable":{consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},"minecraft:custom_data":{item:{id:7b,type:2},id:6},"minecraft:item_model":"minecraft:brown_carpet","minecraft:item_name":"Clay Mold | Shape: [Small Hammer]"}}}
execute if score #return .data matches 7 run summon item ~ ~0.5 ~ {Item:{id:"minecraft:clay_ball",Count:1b,components:{"minecraft:consumable":{consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},"minecraft:custom_data":{item:{id:7b,type:2},id:7},"minecraft:item_model":"minecraft:brown_carpet","minecraft:item_name":"Clay Mold | Shape: [Small Saw]"}}}
execute if score #return .data matches 8 run summon item ~ ~0.5 ~ {Item:{id:"minecraft:clay_ball",Count:1b,components:{"minecraft:consumable":{consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},"minecraft:custom_data":{item:{id:7b,type:2},id:8},"minecraft:item_model":"minecraft:brown_carpet","minecraft:item_name":"Clay Mold | Shape: [Ingot]"}}}
execute if score #return .data matches 9 run summon item ~ ~0.5 ~ {Item:{id:"minecraft:clay_ball",Count:1b,components:{"minecraft:consumable":{consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},"minecraft:custom_data":{item:{id:7b,type:2},id:9},"minecraft:item_model":"minecraft:brown_carpet","minecraft:item_name":"Clay Mold | Shape: [Spear]"}}}
execute if score #return .data matches 10 run summon item ~ ~0.5 ~ {Item:{id:"minecraft:clay_ball",Count:1b,components:{"minecraft:consumable":{consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},"minecraft:custom_data":{item:{id:7b,type:2},id:10},"minecraft:item_model":"minecraft:brown_carpet","minecraft:item_name":"Clay Mold | Shape: [Shovel]"}}}

execute unless score @s .data matches 1..10 run summon item ~ ~0.5 ~ {Item:{id:"minecraft:clay_ball",count:1,components:{"minecraft:consumable":{consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},"minecraft:custom_data":{item:{id:7b,type:2},id:9},"minecraft:item_model":"minecraft:brown_carpet","minecraft:item_name":"Clay Mold"}}}















execute on vehicle run function lzenl:f_mc/blocks/kill
playsound block.decorated_pot.break block @a ~ ~ ~ 3 0
particle block{block_state:"flower_pot"} ~ ~ ~ 0.2 0.1 0.2 0.02 10


