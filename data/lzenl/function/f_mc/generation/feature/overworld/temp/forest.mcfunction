##
 # forest.mcfunction
 # 
 #
 # Created by .
##
execute unless block ~ ~-1 ~ #gen_valid run return fail


execute store result score #return .data run random value 1..500

execute if score #return .data matches 5..209 run function lzenl:f_mc/generation/feature/overworld/stick

execute if score #return .data matches 210..410 run function lzenl:f_mc/generation/feature/overworld/rock

execute if score #return .data matches 410..455 run fill ~ ~ ~ ~ ~ ~ stone_slab
execute if score #return .data matches 456..500 run fill ~ ~ ~ ~ ~ ~ cobblestone_slab

