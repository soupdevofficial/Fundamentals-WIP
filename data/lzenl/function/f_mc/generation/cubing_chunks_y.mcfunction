##
 # cubing_chunks_y.mcfunction
 # 
 #
 # Created by .
##




scoreboard players add #gen.math.min.y .data 1
execute if score #gen.math.min.y .data matches ..-4 run return run function lzenl:f_mc/generation/cubing_chunks_x
execute if score #gen.math.min.y .data matches 6.. run return fail

function lzenl:f_mc/generation/chunking


execute unless score #gen.math.min.x .data = #gen.math.max.x .data run return run function lzenl:f_mc/generation/cubing_chunks_x
