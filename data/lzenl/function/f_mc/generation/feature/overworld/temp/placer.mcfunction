##
 # placer.mcfunction
 # 
 #
 # Created by .
##

scoreboard players set .bio .data 0




execute store result score .bio .data run random value 1..2000

execute unless entity @n[tag=fd_rift,type=marker,distance=..250] store result score .bio .data run random value 1..7


execute if score .bio .data matches 7 run function lzenl:f_mc/generation/feature/overworld/rift
execute if score .bio .data matches 7 run return fail



execute if biome ~ ~ ~ #is_river run scoreboard players set .bio .data 1
execute if biome ~ ~ ~ #is_ocean run scoreboard players set .bio .data 1
execute if biome ~ ~ ~ #is_deep_ocean run scoreboard players set .bio .data 1

execute if biome ~ ~ ~ #spawns_cold_variant_farm_animals run scoreboard players set .bio .data 3

execute if biome ~ ~ ~ #spawns_warm_variant_farm_animals run scoreboard players set .bio .data 4

execute if biome ~ ~ ~ plains run scoreboard players set .bio .data 5

execute if biome ~ ~ ~ #is_forest run scoreboard players set .bio .data 2

execute if predicate lzenl:cave_pos run scoreboard players set .bio .data 6





execute if score .bio .data matches 1 run function lzenl:f_mc/generation/feature/overworld/water
execute if score .bio .data matches 2 run function lzenl:f_mc/generation/feature/overworld/forest
execute if score .bio .data matches 3 run function lzenl:f_mc/generation/feature/overworld/cold




execute if score .bio .data matches 5 run function lzenl:f_mc/generation/feature/overworld/plains
execute if score .bio .data matches 6 run function lzenl:f_mc/generation/feature/overworld/cave

















