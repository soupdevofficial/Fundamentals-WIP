##
 # 1.mcfunction
 # 
 #
 # Created by .
##
execute store result score #random .data run random value 1..56



execute if score #random .data matches 1..10 run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/path_end
execute if score #random .data matches 11..20 run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/path_corner
execute if score #random .data matches 21..30 run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/2story
execute if score #random .data matches 31..40 run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/cross
execute if score #random .data matches 41..50 run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/battle
execute if score #random .data matches 51..55 run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/treasure
execute if score #random .data matches 56 run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/final







