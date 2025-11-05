##
 # 2stoty.mcfunction
 # 
 #
 # Created by .
##





execute if score #rotation .data matches 4 run place template lzenl:soul_fire_trial_chamber_2story ~-9 ~ ~-4
execute if score #rotation .data matches 3 run place template lzenl:soul_fire_trial_chamber_2story ~9 ~ ~4 180
execute if score #rotation .data matches 1 run place template lzenl:soul_fire_trial_chamber_2story ~4 ~ ~-9 clockwise_90
execute if score #rotation .data matches 2 run place template lzenl:soul_fire_trial_chamber_2story ~-4 ~ ~9 counterclockwise_90







execute if score #rotation .data matches 4 positioned ~1 ~6 ~1 run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/2story/1
execute if score #rotation .data matches 3 positioned ~-1 ~6 ~-1 run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/2story/1
execute if score #rotation .data matches 2 positioned ~1 ~6 ~-1 run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/2story/1
execute if score #rotation .data matches 1 positioned ~-1 ~6 ~1 run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/2story/1


