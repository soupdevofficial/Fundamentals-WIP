##
 # 1.mcfunction
 # 
 #
 # Created by .
##
execute store result score #random .data run random value -20..86


execute if score #random .data matches -20..-10 run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/path
execute if score #random .data matches -10..0 run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/path_end
execute if score #random .data matches 1..30 run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/path_corner
execute if score #random .data matches 31..50 run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/2story
execute if score #random .data matches 51..60 run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/cross
execute if score #random .data matches 61..70 run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/battle
execute if score #random .data matches 71..85 run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/treasure
execute if score #random .data matches 86 run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/final







