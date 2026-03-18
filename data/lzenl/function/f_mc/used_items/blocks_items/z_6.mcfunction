
execute store result score #temp .data run data get entity @s Rotation[0]


execute if score #temp .data matches 0..19 run setblock ~ ~ ~ player_head[rotation=0]
execute if score #temp .data matches 20..39 run setblock ~ ~ ~ player_head[rotation=1]
execute if score #temp .data matches 40..59 run setblock ~ ~ ~ player_head[rotation=2]
execute if score #temp .data matches 60..79 run setblock ~ ~ ~ player_head[rotation=3]
execute if score #temp .data matches 80..109 run setblock ~ ~ ~ player_head[rotation=4]
execute if score #temp .data matches 110..129 run setblock ~ ~ ~ player_head[rotation=5]
execute if score #temp .data matches 130..149 run setblock ~ ~ ~ player_head[rotation=6]
execute if score #temp .data matches 150..169 run setblock ~ ~ ~ player_head[rotation=7]
execute if score #temp .data matches 170..180 run setblock ~ ~ ~ player_head[rotation=8]

execute if score #temp .data matches -20..-0 run setblock ~ ~ ~ player_head[rotation=0]
execute if score #temp .data matches -40..-21 run setblock ~ ~ ~ player_head[rotation=15]
execute if score #temp .data matches -60..-41 run setblock ~ ~ ~ player_head[rotation=14]
execute if score #temp .data matches -80..-61 run setblock ~ ~ ~ player_head[rotation=13]
execute if score #temp .data matches -100..-81 run setblock ~ ~ ~ player_head[rotation=12]
execute if score #temp .data matches -120..-101 run setblock ~ ~ ~ player_head[rotation=11]
execute if score #temp .data matches -140..-121 run setblock ~ ~ ~ player_head[rotation=10]
execute if score #temp .data matches -160..-141 run setblock ~ ~ ~ player_head[rotation=9]
execute if score #temp .data matches -180..-161 run setblock ~ ~ ~ player_head[rotation=8]

execute store result score #return .data run data get entity @s SelectedItem.components.minecraft:custom_data.id

execute align y summon interaction run function lzenl:f_mc/blocks/clay_bucket/set_data