execute positioned ~ ~1 ~ run loot replace entity @s contents loot lzenl:light_level
data modify entity @s item.components.minecraft:custom_data.Items set from block ~ ~ ~ Items
execute if items entity @s contents * on passengers run data modify entity @s brightness.block set from entity @n[distance=..2,tag=scroll_table_root] item.count
execute unless items entity @s contents * on passengers run data modify entity @s brightness.block set value 0