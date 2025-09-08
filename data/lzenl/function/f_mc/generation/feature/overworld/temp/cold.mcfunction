##
 # cold.mcfunction
 # 
 #
 # Created by .
##
execute unless block ~ ~-1 ~ #gen_valid run return fail


execute store result score #return .data run random value 1..101

execute if score #return .data matches 1 run fill ~ ~ ~ ~ ~ ~ skeleton_skull[rotation=0]
execute if score #return .data matches 2 run fill ~ ~ ~ ~ ~ ~ skeleton_skull[rotation=5]
execute if score #return .data matches 3 run fill ~ ~ ~ ~ ~ ~ skeleton_skull[rotation=10]
execute if score #return .data matches 4 run fill ~ ~ ~ ~ ~ ~ skeleton_skull[rotation=15]

execute if score #return .data matches 5..10 run fill ~ ~ ~ ~ ~ ~ snow[layers=1]

execute if score #return .data matches 11..100 run function lzenl:f_mc/generation/feature/overworld/rock


execute if score #return .data matches 101 run fill ~ ~ ~ ~ ~ ~ campfire[lit=false]