ride @p[distance=..1] dismount
tag @p[distance=..1] remove ui_open
attribute @p[distance=..1] movement_speed modifier remove ui_open
attribute @p[distance=..1] jump_strength modifier remove ui_open
title @p[distance=..1] actionbar ""
clear @p[distance=..1] wheat_seeds[minecraft:item_model="minecraft:barrier"] 1
tp @s[tag=crafting_ui] ~ -100 ~
kill @s[tag=crafting_ui]