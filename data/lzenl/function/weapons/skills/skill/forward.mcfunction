execute store result score #random .data run random value 1..2


execute if score #skill.reps .data matches 1..5 run function lzenl:weapons/skills/forward/rand1
execute if score #skill.reps .data matches 6.. run function lzenl:weapons/skills/forward/rand2

execute rotated as @s if score #random .data matches 1 anchored feet positioned ^ ^ ^ rotated 0 ~90 run function lzenl:weapons/skills/forward/up_disp
execute rotated as @s if score #random .data matches 2 anchored feet positioned ^ ^ ^ rotated 0 ~-90 run function lzenl:weapons/skills/forward/up_disp

execute if score #skill.reps .data matches 1.. run function lzenl:weapons/skills/skill/forward



