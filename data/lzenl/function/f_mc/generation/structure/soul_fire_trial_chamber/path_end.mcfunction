##
 # path_end.mcfunction
 # 
 #
 # Created by .
##

execute store result score #random .data run random value 1..2


execute if score #random .data matches 1 if score #rotation .data matches 4 run return run place template lzenl:soul_fire_trial_chamber_path_end1 ~ ~ ~-1 clockwise_90
execute if score #random .data matches 1 if score #rotation .data matches 3 run return run place template lzenl:soul_fire_trial_chamber_path_end1 ~ ~ ~-2 clockwise_90 left_right
execute if score #random .data matches 1 if score #rotation .data matches 2 run return run place template lzenl:soul_fire_trial_chamber_path_end1 ~-1 ~ ~
execute if score #random .data matches 1 if score #rotation .data matches 1 run return run place template lzenl:soul_fire_trial_chamber_path_end1 ~-2 ~ ~ none left_right

execute if score #rotation .data matches 4 run place template lzenl:soul_fire_trial_chamber_path_end2 ~ ~ ~-1 clockwise_90
execute if score #rotation .data matches 3 run place template lzenl:soul_fire_trial_chamber_path_end2 ~ ~ ~-2 clockwise_90 left_right
execute if score #rotation .data matches 2 run place template lzenl:soul_fire_trial_chamber_path_end2 ~-1 ~ ~
execute if score #rotation .data matches 1 run place template lzenl:soul_fire_trial_chamber_path_end2 ~-2 ~ ~ none left_right









