tag @s remove ui_open
attribute @s movement_speed modifier remove ui_open
attribute @s jump_strength modifier remove ui_open
title @s actionbar ""
tp @s[tag=crafting_ui] ~ -100 ~
kill @s[tag=crafting_ui]
clear @p[distance=..1] wheat_seeds[minecraft:item_model="minecraft:barrier"] 1