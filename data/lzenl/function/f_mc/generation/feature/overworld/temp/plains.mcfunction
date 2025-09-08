##
 # forest.mcfunction
 # 
 #
 # Created by .
##
execute unless block ~ ~-1 ~ #gen_valid run return fail






execute store result score #return .data run random value 1..1000

execute unless entity @n[distance=..500,tag=aurora,type=interaction] run random value 1..4

execute if score #return .data matches 1 run place template lzenl:aurora ~ ~ ~ none
execute if score #return .data matches 2 run place template lzenl:aurora ~ ~ ~ 180
execute if score #return .data matches 3 run place template lzenl:aurora ~ ~ ~ clockwise_90
execute if score #return .data matches 4 run place template lzenl:aurora ~ ~ ~ counterclockwise_90

execute if score #return .data matches 5..105 run function lzenl:f_mc/generation/feature/overworld/stick

execute if score #return .data matches 106..606 run function lzenl:f_mc/generation/feature/overworld/rock

execute if score #return .data matches 607..707 run fill ~ ~ ~ ~ ~ ~ stone_slab
execute if score #return .data matches 708..808 run fill ~ ~ ~ ~ ~ ~ cobblestone_slab

execute if score #return .data matches 999..1000 run place template lzenl:wayfinder ~ ~ ~ none
