##
 # start.mcfunction
 # 
 #
 # Created by .
##
execute store result score #rooms .data run random value 1..30
execute store result score #rotation .data run random value 1..4

execute if score #rotation .data matches 1 run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/start/1
execute if score #rotation .data matches 2 run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/start/2
execute if score #rotation .data matches 3 run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/start/3
execute if score #rotation .data matches 4 run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/start/4