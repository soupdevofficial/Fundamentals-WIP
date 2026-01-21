

scoreboard players set #rotat .data 360
scoreboard players operation #rotat .data /= #skill.reps .data
scoreboard players operation #matchrot .data = #rotat .data
scoreboard players operation #constrot .data = #rotat .data

execute at @s run function lzenl:weapons/skills/aoe/displ_rot