##
 # generate.mcfunction
 # 
 #
 # Created by .
##

execute if predicate lzenl:cave_pos run return run function lzenl:f_mc/generation/feature/overworld/a_cave
execute if biome ~ ~ ~ #minecraft:is_forest run return run function lzenl:f_mc/generation/feature/overworld/a_forest
execute if biome ~ ~ ~ plains run return run function lzenl:f_mc/generation/feature/overworld/a_plains
execute if biome ~ ~ ~ #is_ocean run return run function lzenl:f_mc/generation/feature/overworld/a_ocean
execute if biome ~ ~ ~ stony_shore run return run function lzenl:f_mc/generation/feature/overworld/a_stony_shore