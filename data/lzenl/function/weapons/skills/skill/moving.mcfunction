


execute unless score @s skills.range matches 1.. run return run kill @s
execute unless block ~ ~ ~ #replaceable run return run kill @s
execute positioned ^ ^ ^1 run tp @s ~ ~ ~
scoreboard players remove @s skills.range 1

execute positioned ^ ^ ^-0.25 run function lzenl:weapons/skills/particle
execute positioned ^ ^ ^-0.5 run function lzenl:weapons/skills/particle

