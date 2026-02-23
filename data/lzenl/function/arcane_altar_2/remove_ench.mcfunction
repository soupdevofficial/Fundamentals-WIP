##
 # remove_ench.mcfunction
 # 
 #
 # Created by .
##
scoreboard players reset #removed_ench .data
scoreboard players reset #remove_ench .data

execute if items block ~ ~-1 ~ container.1 gold_nugget[item_name="Enchanting Quill",!damage=10] if function lzenl:arcane_altar_2/changed_ench_slots run scoreboard players set #remove_ench .data -1
execute if items block ~ ~-1 ~ container.3 gold_nugget[item_name="Enchanting Quill",!damage=10] if function lzenl:arcane_altar_2/changed_ench_slots run scoreboard players set #remove_ench .data 0
execute if items block ~ ~-1 ~ container.4 gold_nugget[item_name="Enchanting Quill",!damage=10] if function lzenl:arcane_altar_2/changed_ench_slots run scoreboard players set #remove_ench .data 1
execute if items block ~ ~-1 ~ container.5 gold_nugget[item_name="Enchanting Quill",!damage=10] if function lzenl:arcane_altar_2/changed_ench_slots run scoreboard players set #remove_ench .data 2
execute if items block ~ ~-1 ~ container.6 gold_nugget[item_name="Enchanting Quill",!damage=10] if function lzenl:arcane_altar_2/changed_ench_slots run scoreboard players set #remove_ench .data 3
execute if items block ~ ~-1 ~ container.7 gold_nugget[item_name="Enchanting Quill",!damage=10] if function lzenl:arcane_altar_2/changed_ench_slots run scoreboard players set #remove_ench .data 4

execute if items block ~ ~-1 ~ container.12 gold_nugget[item_name="Enchanting Quill",!damage=10] if function lzenl:arcane_altar_2/changed_ench_slots run scoreboard players set #remove_ench .data 5
execute if items block ~ ~-1 ~ container.13 gold_nugget[item_name="Enchanting Quill",!damage=10] if function lzenl:arcane_altar_2/changed_ench_slots run scoreboard players set #remove_ench .data 6
execute if items block ~ ~-1 ~ container.14 gold_nugget[item_name="Enchanting Quill",!damage=10] if function lzenl:arcane_altar_2/changed_ench_slots run scoreboard players set #remove_ench .data 7
execute if items block ~ ~-1 ~ container.15 gold_nugget[item_name="Enchanting Quill",!damage=10] if function lzenl:arcane_altar_2/changed_ench_slots run scoreboard players set #remove_ench .data 8
execute if items block ~ ~-1 ~ container.16 gold_nugget[item_name="Enchanting Quill",!damage=10] if function lzenl:arcane_altar_2/changed_ench_slots run scoreboard players set #remove_ench .data 9

execute if items block ~ ~-1 ~ container.21 gold_nugget[item_name="Enchanting Quill",!damage=10] if function lzenl:arcane_altar_2/changed_ench_slots run scoreboard players set #remove_ench .data 10
execute if items block ~ ~-1 ~ container.22 gold_nugget[item_name="Enchanting Quill",!damage=10] if function lzenl:arcane_altar_2/changed_ench_slots run scoreboard players set #remove_ench .data 11
execute if items block ~ ~-1 ~ container.23 gold_nugget[item_name="Enchanting Quill",!damage=10] if function lzenl:arcane_altar_2/changed_ench_slots run scoreboard players set #remove_ench .data 12
execute if items block ~ ~-1 ~ container.24 gold_nugget[item_name="Enchanting Quill",!damage=10] if function lzenl:arcane_altar_2/changed_ench_slots run scoreboard players set #remove_ench .data 13
execute if items block ~ ~-1 ~ container.25 gold_nugget[item_name="Enchanting Quill",!damage=10] if function lzenl:arcane_altar_2/changed_ench_slots run scoreboard players set #remove_ench .data 14


execute as @a[tag=user,distance=..6] run function lzenl:arcane_altar_2/return_quill

execute unless score #remove_ench .data matches -1..14 run return fail
execute if score #removed_ench .data matches 2 run return fail


scoreboard players set #to_page .data 15
scoreboard players operation #to_page .data *= @s .data
data remove storage minecraft:temp data.macro
execute store result storage temp data.macro.index int 1 run scoreboard players operation #to_page .data += #remove_ench .data

execute at @a[distance=..6,tag=user] run function lzenl:arcane_altar_2/remove_from_stored with storage temp data.macro