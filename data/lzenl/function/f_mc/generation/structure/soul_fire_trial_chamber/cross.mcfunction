##
 # 2stoty.mcfunction
 # 
 #
 # Created by .
##





execute if score #rotation .data matches 4 run place template lzenl:soul_fire_trial_chamber_cross ~-9 ~ ~-4
execute if score #rotation .data matches 3 run place template lzenl:soul_fire_trial_chamber_cross ~9 ~ ~4 180
execute if score #rotation .data matches 1 run place template lzenl:soul_fire_trial_chamber_cross ~4 ~ ~-9 clockwise_90
execute if score #rotation .data matches 2 run place template lzenl:soul_fire_trial_chamber_cross ~-4 ~ ~9 counterclockwise_90





execute if score #rotation .data matches 4 run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/cross/1

execute if score #rotation .data matches 3 run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/cross/2

execute if score #rotation .data matches 1 run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/cross/3

execute if score #rotation .data matches 2 run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/cross/4



