##
 # check_loc_change.mcfunction
 # 
 #
 # Created by .
##

##chunk size is 50x50x50
scoreboard players set run .data 0




execute store result score #gen.math.x .data run data get entity @s Pos[0]
execute store result score #gen.math.y .data run data get entity @s Pos[1]
execute store result score #gen.math.z .data run data get entity @s Pos[2]

execute if score #gen.old.x .data = #gen.math.x .data if score #gen.old.y .data = #gen.math.y .data if score #gen.old.z .data = #gen.math.z .data run return fail

scoreboard players operation #gen.old.x .data = #gen.math.x .data
scoreboard players operation #gen.old.y .data = #gen.math.y .data
scoreboard players operation #gen.old.z .data = #gen.math.z .data

execute if score #gen.math.x .data matches ..-1 run scoreboard players remove #gen.math.x .data 1
execute if score #gen.math.z .data matches ..-1 run scoreboard players remove #gen.math.z .data 1
execute if score #gen.math.y .data matches ..-1 run scoreboard players remove #gen.math.y .data 1

#chunk origin center
scoreboard players operation #gen.math.x .data /= #chunk_size .data
scoreboard players operation #gen.math.z .data /= #chunk_size .data
scoreboard players operation #gen.math.y .data /= #chunk_size .data


execute if score #chunk_distance .data matches 0 if score #gen.math.min.y .data matches -3..5 run return run function lzenl:f_mc/generation/chunking

# get corners of cube of chunks
scoreboard players operation #gen.math.max.x .data = #gen.math.x .data
scoreboard players operation #gen.math.max.z .data = #gen.math.z .data
scoreboard players operation #gen.math.max.y .data = #gen.math.y .data
scoreboard players operation #gen.math.min.x .data = #gen.math.x .data
scoreboard players operation #gen.math.min.z .data = #gen.math.z .data
scoreboard players operation #gen.math.min.y .data = #gen.math.y .data



scoreboard players operation #gen.math.max.x .data += #chunk_distance .data
scoreboard players operation #gen.math.max.z .data += #chunk_distance .data
scoreboard players operation #gen.math.max.y .data += #chunk_distance .data
scoreboard players operation #gen.math.min.x .data -= #chunk_distance .data
scoreboard players operation #gen.math.min.z .data -= #chunk_distance .data
scoreboard players operation #gen.math.min.y .data -= #chunk_distance .data

scoreboard players operation #gen.math.min.x.hold .data = #gen.math.min.x .data
scoreboard players operation #gen.math.min.z.hold .data = #gen.math.min.z .data
scoreboard players operation #gen.math.min.y.hold .data = #gen.math.min.y .data
execute if score #gen.math.min.y .data matches -3..5 run function lzenl:f_mc/generation/chunking

function lzenl:f_mc/generation/cubing_chunks_x