
execute if score #rotat .data = #matchrot .data run function lzenl:weapons/skills/aoe/execute
scoreboard players add #rotat .data 1

execute if score #skill.reps .data matches 1.. rotated ~2 0 run function lzenl:weapons/skills/aoe/displ_rot