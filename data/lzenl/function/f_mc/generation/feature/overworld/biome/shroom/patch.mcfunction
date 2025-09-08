##
 # p[atch.mcfunction
 # 
 #
 # Created by .
##
scoreboard players remove #biome.size temp 1
execute store result storage temp data.biome.orient int 1 run random value 0..360
function lzenl:f_mc/generation/feature/overworld/biome/shroom/place_patch with storage temp data.biome

