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

execute store result score #return temp run function lzenl:f_mc/generation/already_present with storage temp data.world_generation
execute unless score #return temp matches 1 run return fail


# rng = seed
scoreboard players operation #worldgen.local.rng .data = #seed .data


scoreboard players operation #worldgen.local.rng .data %= #worldgen.global.rng.mod .data


# mix X coord into randomness
scoreboard players operation #worldgen.local.rng .data += #gen.math.gen.x .data
scoreboard players operation #worldgen.local.rng .data /= #gen.math.gen.x .data
scoreboard players operation #worldgen.local.rng .data += #gen.math.gen.x .data


# mix Z coord into randomness
scoreboard players operation #worldgen.local.rng .data += #gen.math.gen.z .data
scoreboard players operation #worldgen.local.rng .data /= #gen.math.gen.z .data
scoreboard players operation #worldgen.local.rng .data += #gen.math.gen.z .data


# mix Y coord into randomness
scoreboard players operation #worldgen.local.rng .data += #gen.math.gen.y .data
scoreboard players operation #worldgen.local.rng .data /= #gen.math.gen.y .data
scoreboard players operation #worldgen.local.rng .data += #gen.math.gen.y .data

# after your final adds
scoreboard players operation #worldgen.local.rng .data *= #worldgen.global.rng.mult .data
scoreboard players operation #worldgen.local.rng .data %= #worldgen.global.rng.mod .data

# --- COUNT (1–25), derived from CHUNK COORDS ---
# count = (abs(rng) % 1000) / 40 + 1
scoreboard players operation #worldgen.local.count .data = #worldgen.local.rng .data
execute if score #worldgen.local.count .data matches ..-1 run scoreboard players operation #worldgen.local.count .data *= #vt_-1 .data
scoreboard players operation #worldgen.local.count .data %= #rng.count.mod .data
scoreboard players operation #worldgen.local.count .data /= #rng.count.div .data
scoreboard players add #worldgen.local.count .data 1



#convert chunk origin coord into world coord
scoreboard players operation #gen.math.gen.x .data *= #chunk_size .data
scoreboard players operation #gen.math.gen.z .data *= #chunk_size .data
scoreboard players operation #gen.math.gen.y .data *= #chunk_size .data



function lzenl:f_mc/generation/start



return fail