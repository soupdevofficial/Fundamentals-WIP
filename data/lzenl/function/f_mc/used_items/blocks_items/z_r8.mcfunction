##
 # give-back.mcfunction
 # 
 #
 # Created by .
##

execute if score #handed .data matches 1 store result score #return .data run data get entity @s SelectedItem.components.minecraft:custom_data.id
execute if score #handed .data matches 2 store result score #return .data run data get entity @s equipment.offhand.components.minecraft:custom_data.id

execute if score #return .data matches 1 run return run give @s clay_ball[consumable={consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},custom_data={item:{id:8b,type:2},id:1},item_model="minecraft:light_gray_carpet",item_name="Dry Clay Mold"] 1
execute if score #return .data matches 2 run return run give @s clay_ball[consumable={consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},custom_data={item:{id:8b,type:2},id:2},item_model="minecraft:light_gray_carpet",item_name="Dry Clay Mold"] 1
execute if score #return .data matches 3 run return run give @s clay_ball[consumable={consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},custom_data={item:{id:8b,type:2},id:3},item_model="minecraft:light_gray_carpet",item_name="Dry Clay Mold"] 1
execute if score #return .data matches 4 run return run give @s clay_ball[consumable={consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},custom_data={item:{id:8b,type:2},id:4},item_model="minecraft:light_gray_carpet",item_name="Dry Clay Mold"] 1
execute if score #return .data matches 5 run return run give @s clay_ball[consumable={consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},custom_data={item:{id:8b,type:2},id:5},item_model="minecraft:light_gray_carpet",item_name="Dry Clay Mold"] 1
execute if score #return .data matches 6 run return run give @s clay_ball[consumable={consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},custom_data={item:{id:8b,type:2},id:6},item_model="minecraft:light_gray_carpet",item_name="Dry Clay Mold"] 1
execute if score #return .data matches 7 run return run give @s clay_ball[consumable={consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},custom_data={item:{id:8b,type:2},id:7},item_model="minecraft:light_gray_carpet",item_name="Dry Clay Mold"] 1
execute if score #return .data matches 8 run return run give @s clay_ball[consumable={consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},custom_data={item:{id:8b,type:2},id:8},item_model="minecraft:light_gray_carpet",item_name="Dry Clay Mold"] 1
give @s clay_ball[consumable={consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},custom_data={item:{id:8b,type:2},id:9},item_model="minecraft:light_gray_carpet",item_name="Dry Clay Mold"] 1





