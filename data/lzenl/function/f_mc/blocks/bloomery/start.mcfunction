execute unless score @s .data matches 0.. run scoreboard players set @s .data 0
execute store result score #return1 .data run data modify entity @s item.components."minecraft:custom_data".inv set from block ~ ~-1 ~ Items


execute at @s as @a[distance=..7] run function lzenl:arcane_altar_2/on_player

execute if score #return1 .data matches 1.. run function lzenl:f_mc/blocks/bloomery/set_ui





execute as @a[distance=..7,tag=user] if items entity @s player.cursor *[item_name="execute"] run item replace entity @s player.cursor with air
tag @a[distance=..7,tag=user] remove user