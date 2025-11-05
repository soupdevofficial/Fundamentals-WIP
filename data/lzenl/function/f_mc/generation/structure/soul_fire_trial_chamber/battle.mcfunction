##
 # 2stoty.mcfunction
 # 
 #
 # Created by .
##





execute if score #rotation .data matches 4 run place template lzenl:soul_fire_trial_chamber_battle ~-9 ~ ~-4
execute if score #rotation .data matches 3 run place template lzenl:soul_fire_trial_chamber_battle ~9 ~ ~4 180
execute if score #rotation .data matches 1 run place template lzenl:soul_fire_trial_chamber_battle ~4 ~ ~-9 clockwise_90
execute if score #rotation .data matches 2 run place template lzenl:soul_fire_trial_chamber_battle ~-4 ~ ~9 counterclockwise_90

