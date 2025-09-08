##
 # fill.mcfunction
 # 
 #
 # Created by .
##



execute if block ~ ~-1 ~ #replaceable positioned ~ ~-1 ~ run return run function lzenl:f_mc/generation/feature/end/biome/obsidian_hollows/fill
execute unless block ~ ~ ~ #replaceable positioned ~ ~1 ~ run return run function lzenl:f_mc/generation/feature/end/biome/obsidian_hollows/fill



execute if block ~ ~-1 ~ #replaceable unless block ~ ~ ~ #replaceable run return fail
execute unless block ~ ~1 ~ #replaceable unless block ~ ~ ~ #replaceable run return fail

fillbiome ~3 ~-2 ~3 ~-3 ~15 ~-3 the_void



execute unless block ~ ~-1 ~ #endgen run return fail


execute store result score #return temp run random value 2..9
execute store result score #return2 temp run random value 1..10



fill ~3 ~ ~3 ~-3 ~20 ~-3 air replace chorus_flower
fill ~3 ~ ~3 ~-3 ~20 ~-3 air replace chorus_plant


execute if score #return2 temp matches 1..3 run fill ~3 ~-1 ~2 ~-3 ~-1 ~-2 blackstone
execute if score #return2 temp matches 1..3 run fill ~2 ~-1 ~3 ~-2 ~-1 ~-3 blackstone

execute if score #return2 temp matches 4..10 run fill ~3 ~-1 ~2 ~-3 ~-1 ~-2 obsidian
execute if score #return2 temp matches 4..10 run fill ~2 ~-1 ~3 ~-2 ~-1 ~-3 obsidian
execute if score #return2 temp matches 4..10 run fill ~3 ~1 ~2 ~-3 ~4 ~-2 air replace blackstone_wall
execute if score #return2 temp matches 4..10 run fill ~2 ~1 ~3 ~-2 ~4 ~-3 air replace blackstone_wall





execute unless block ~ ~-1 ~ obsidian run return fail






