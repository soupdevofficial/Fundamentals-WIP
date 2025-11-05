##
 # path.mcfunction
 # 
 #
 # Created by .
##







execute store result score #random .data run random value 0..1


execute if score #random .data matches 1 if score #rotation .data matches 1 run place template lzenl:soul_fire_trial_chamber_path ~4 ~ ~-8 clockwise_90
execute if score #rotation .data matches 1 run place template lzenl:soul_fire_trial_chamber_path ~-5 ~ ~-8 clockwise_90 left_right
execute if score #random .data matches 1 if score #rotation .data matches 2 run place template lzenl:soul_fire_trial_chamber_path ~5 ~ ~ clockwise_90
execute if score #rotation .data matches 2 run place template lzenl:soul_fire_trial_chamber_path ~-4 ~ ~ clockwise_90 left_right
execute if score #random .data matches 1 if score #rotation .data matches 3 run place template lzenl:soul_fire_trial_chamber_path ~ ~ ~-5
execute if score #rotation .data matches 3 run place template lzenl:soul_fire_trial_chamber_path ~ ~ ~4 none left_right
execute if score #random .data matches 1 if score #rotation .data matches 4 run place template lzenl:soul_fire_trial_chamber_path ~-8 ~ ~-4 none
execute if score #rotation .data matches 4 run place template lzenl:soul_fire_trial_chamber_path ~-8 ~ ~5 none left_right





execute if score #rotation .data matches 1 positioned ~ ~ ~-9 run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/path/1
execute if score #rotation .data matches 2 positioned ~ ~ ~9 run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/path/1
execute if score #rotation .data matches 3 positioned ~9 ~ ~ run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/path/1
execute if score #rotation .data matches 4 positioned ~-9 ~ ~ run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/path/1
