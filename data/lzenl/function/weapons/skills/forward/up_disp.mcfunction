scoreboard players remove #random3 .data 1
execute if score #random3 .data matches 1.. run return run execute positioned ^ ^ ^0.275 run return run function lzenl:weapons/skills/forward/up_disp


execute store result score #random .data run random value 1..2
execute rotated as @s if score #random .data matches 1 anchored eyes positioned ^-1 ^ ^ rotated ~90 0 run function lzenl:weapons/skills/forward/side_disp
execute rotated as @s if score #random .data matches 2 anchored eyes positioned ^1 ^ ^ rotated ~-90 0 run function lzenl:weapons/skills/forward/side_disp