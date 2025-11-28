##
 # path_corner.mcfunction
 # 
 #
 # Created by .
##

execute store result score #random .data run random value 1..2















execute if score #random .data matches 1 if score #rotation .data matches 1 run place template lzenl:soul_fire_trial_chamber_corner ~-5 ~ ~ none left_right
execute if score #random .data matches 2 if score #rotation .data matches 1 run place template lzenl:soul_fire_trial_chamber_corner ~4 ~ ~ 180

execute if score #random .data matches 1 if score #rotation .data matches 2 run place template lzenl:soul_fire_trial_chamber_corner ~5 ~ ~ none front_back
execute if score #random .data matches 2 if score #rotation .data matches 2 run place template lzenl:soul_fire_trial_chamber_corner ~-4 ~ ~

execute if score #random .data matches 1 if score #rotation .data matches 3 run place template lzenl:soul_fire_trial_chamber_corner ~ ~ ~-5 clockwise_90 left_right
execute if score #random .data matches 2 if score #rotation .data matches 3 run place template lzenl:soul_fire_trial_chamber_corner ~ ~ ~4 counterclockwise_90

execute if score #random .data matches 1 if score #rotation .data matches 4 run place template lzenl:soul_fire_trial_chamber_corner ~ ~ ~-4 clockwise_90
execute if score #random .data matches 2 if score #rotation .data matches 4 run place template lzenl:soul_fire_trial_chamber_corner ~ ~ ~5 counterclockwise_90 left_right






execute if score #rotation .data matches 1 run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/corner/1
execute if score #rotation .data matches 2 run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/corner/2
execute if score #rotation .data matches 3 run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/corner/3
execute if score #rotation .data matches 4 run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/corner/4














