
scoreboard players remove #rotat .data 1
execute if score #rotat .data matches 1.. rotated ~15 ~25 run return run function lzenl:weapons/skills/type/slash/2
scoreboard players set #particle .data 10

execute anchored eyes positioned ^ ^ ^-2 rotated ~ ~ run function lzenl:weapons/skills/type/slash/3
