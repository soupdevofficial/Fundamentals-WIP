scoreboard players remove #skill.reps .data 1
scoreboard players operation #matchrot .data += #constrot .data
tag @s add user
execute rotated ~ 0 positioned ^ ^1 ^1 summon item_display run function lzenl:weapons/skills/set_item_display
tag @s remove user