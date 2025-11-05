##
 # 2.mcfunction
 # 
 #
 # Created by .
##

place template lzenl:soul_fire_trial_chamber_main ~-5 ~ ~9 none left_right
scoreboard players set #rotation .data 1
execute positioned ~1 ~ ~-1 run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/path_end

scoreboard players set #rotation .data 2
execute positioned ~ ~ ~10 run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/path

scoreboard players set #rotation .data 3
execute positioned ~7 ~ ~5 run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/path

scoreboard players set #rotation .data 4
execute positioned ~-6 ~ ~4 run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/path
