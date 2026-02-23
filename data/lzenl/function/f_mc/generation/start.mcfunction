
# mix feature index into RNG (break tiling)
scoreboard players operation #worldgen.local.rng .data += #worldgen.local.count .data
scoreboard players operation #worldgen.local.rng .data *= #worldgen.global.rng.mult .data
scoreboard players add #worldgen.local.rng .data 14159231

scoreboard players operation #worldgen.local.shiftx .data = #gen.math.gen.x .data
scoreboard players operation #worldgen.local.shiftz .data = #gen.math.gen.z .data
 
scoreboard players remove #worldgen.local.count .data 1

# run this n (1-25) times # in a different recursive function
#max y change inside cube chunk = 25 blocks
scoreboard players operation #worldgen.local.y_displace .data = #chunk_size_half .data






#change local.rng ( the local chunk randomness ) otherwise x and z will generate the same output
scoreboard players operation #worldgen.local.rng .data *= #worldgen.global.rng.mult .data
scoreboard players add #worldgen.local.rng .data 124323



#similar to random local.count set random value between 0..49
function lzenl:f_mc/generation/reducerngtochunkrange
execute store result storage temp data.macro.x int 1 run scoreboard players operation #worldgen.local.shiftx .data += #worldgen.local.tmprng .data






#change local.rng ( the local chunk randomness ) otherwise x and z will generate the same output
scoreboard players operation #worldgen.local.rng .data *= #worldgen.global.rng.mult .data
scoreboard players add #worldgen.local.rng .data 648745557



#similar to random local.count set random value between 0..49
function lzenl:f_mc/generation/reducerngtochunkrange
execute store result storage temp data.macro.z int 1 run scoreboard players operation #worldgen.local.shiftz .data += #worldgen.local.tmprng .data






#placement
#step 1. check heigth map (the score of #gen.math.gen.y .data) if it is at a certain height rarely allow underground/buried features (such as fossils/archeology/geodes)
#-> allow y displacement then do step 2.

#else skip directly to step 2.

#step 2. go to nearest surface position then place structure 
#function lzenl:f_mc/generation/test with storage temp data.macro
#both are always dependant on the biome of the final position
#-> allow for more micro biomes in more barren vanilla biomes

##
execute if score #worldgen.local.count .data matches 1.. run function lzenl:f_mc/generation/start