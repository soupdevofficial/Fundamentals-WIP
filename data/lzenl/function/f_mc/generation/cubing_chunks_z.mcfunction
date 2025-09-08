##
 # cubing_chunks_z.mcfunction
 # 
 #
 # Created by .
##




scoreboard players add #gen.math.min.z .data 1

function lzenl:f_mc/generation/chunking

execute unless score #gen.math.min.x .data = #gen.math.max.x .data run return run function lzenl:f_mc/generation/cubing_chunks_x



