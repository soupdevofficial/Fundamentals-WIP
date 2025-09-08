##
 # cubing_chunks_x.mcfunction
 # 
 #
 # Created by .
##





scoreboard players add #gen.math.min.x .data 1

function lzenl:f_mc/generation/chunking


execute unless score #gen.math.min.x .data = #gen.math.max.x .data run return run function lzenl:f_mc/generation/cubing_chunks_x
scoreboard players operation #gen.math.min.x .data = #gen.math.min.x.hold .data

execute unless score #gen.math.min.z .data = #gen.math.max.z .data run return run function lzenl:f_mc/generation/cubing_chunks_z
scoreboard players operation #gen.math.min.x .data = #gen.math.min.x.hold .data
scoreboard players operation #gen.math.min.z .data = #gen.math.min.z.hold .data
execute unless score #gen.math.min.y .data = #gen.math.max.y .data run return run function lzenl:f_mc/generation/cubing_chunks_y

