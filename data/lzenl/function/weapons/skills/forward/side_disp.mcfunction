scoreboard players remove #random2 .data 1
execute if score #random2 .data matches 1.. run return run execute positioned ^ ^ ^0.5 run function lzenl:weapons/skills/forward/side_disp
scoreboard players remove #skill.reps .data 1

tag @s add user

execute if score #random .data matches 1 rotated as @s rotated ~-3.5 ~ summon item_display run function lzenl:weapons/skills/set_item_display
execute if score #random .data matches 2 rotated as @s rotated ~3.5 ~ summon item_display run function lzenl:weapons/skills/set_item_display
tag @s remove user
