##
 # place.mcfunction
 # 
 #
 # Created by .
##

#return run setblock ~ ~ ~ diamond_block


execute store result score #random .data run random value 1..20


execute if score #random .data matches 1..5 run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/path_end
execute if score #random .data matches 6..20 run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/path
