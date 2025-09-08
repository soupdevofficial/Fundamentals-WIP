##
 # chunking.mcfunction
 # 
 #
 # Created by .
##



execute if predicate lzenl:overworld run data modify storage temp data.world_generation.dim set value "overworld"
execute if predicate lzenl:the_nether run data modify storage temp data.world_generation.dim set value "the_nether"
execute if predicate lzenl:the_end run data modify storage temp data.world_generation.dim set value "the_end"
execute store result storage temp data.world_generation.x int 1 run scoreboard players operation #gen.math.gen.x .data = #gen.math.min.x .data
execute store result storage temp data.world_generation.z int 1 run scoreboard players operation #gen.math.gen.z .data = #gen.math.min.z .data
execute store result storage temp data.world_generation.y int 1 run scoreboard players operation #gen.math.gen.y .data = #gen.math.min.y .data
#chunk center run generation
scoreboard players operation #gen.math.gen.x .data *= #chunk_size .data
scoreboard players operation #gen.math.gen.z .data *= #chunk_size .data
scoreboard players operation #gen.math.gen.y .data *= #chunk_size .data
execute store result storage temp data.world_generation.cx int 1 run scoreboard players operation #gen.math.gen.x .data += #chunk_size_half .data
execute store result storage temp data.world_generation.cz int 1 run scoreboard players operation #gen.math.gen.z .data += #chunk_size_half .data
execute store result storage temp data.world_generation.cy int 1 run scoreboard players operation #gen.math.gen.y .data += #chunk_size_half .data
execute store result score #return temp run function lzenl:f_mc/generation/already_present with storage temp data.world_generation


return fail