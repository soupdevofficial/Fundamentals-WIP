##
 # 1.mcfunction
 # 
 #
 # Created by .
##
execute store result score #random .data run random value 1..20

scoreboard players reset #return .data
execute if score #rotation .data matches 1 unless score #return .data matches 1 store success score #return .data run scoreboard players set #rotation .data 2
execute if score #rotation .data matches 2 unless score #return .data matches 1 store success score #return .data run scoreboard players set #rotation .data 1
execute if score #rotation .data matches 3 unless score #return .data matches 1 store success score #return .data run scoreboard players set #rotation .data 4
execute if score #rotation .data matches 4 unless score #return .data matches 1 store success score #return .data run scoreboard players set #rotation .data 3

execute if score #random .data matches 1..5 run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/path_end
execute if score #random .data matches 6..20 run return run function lzenl:f_mc/generation/structure/soul_fire_trial_chamber/path





