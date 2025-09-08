##
 # fill.mcfunction
 # 
 #
 # Created by .
##



execute if block ~ ~-1 ~ #replaceable positioned ~ ~-1 ~ run return run function lzenl:f_mc/generation/feature/overworld/biome/shroom/fill
execute unless block ~ ~ ~ #replaceable positioned ~ ~1 ~ run return run function lzenl:f_mc/generation/feature/overworld/biome/shroom/fill



execute if block ~ ~-1 ~ #replaceable unless block ~ ~ ~ #replaceable run return fail
execute unless block ~ ~1 ~ #replaceable unless block ~ ~ ~ #replaceable run return fail

fillbiome ~4 ~-2 ~4 ~-4 ~5 ~-4 mushroom_fields

execute store result score #return temp run random value -14..44


execute if score #return temp matches 27..42 unless block ~ ~-1 ~ #base_stone_overworld run return fail


execute if score #return temp matches -14..5 run fill ~3 ~-2 ~2 ~-3 ~5 ~-2 mycelium replace #sculk_replaceable_world_gen
execute if score #return temp matches -14..5 run fill ~2 ~-2 ~3 ~-2 ~5 ~-3 mycelium replace #sculk_replaceable_world_gen

execute if score #return temp matches 20..44 run fill ~3 ~-2 ~2 ~-3 ~5 ~-2 light_gray_terracotta replace #sculk_replaceable_world_gen
execute if score #return temp matches 20..44 run fill ~2 ~-2 ~3 ~-2 ~5 ~-3 light_gray_terracotta replace #sculk_replaceable_world_gen

execute if score #return temp matches 6..19 run fill ~3 ~-2 ~2 ~-3 ~5 ~-2 packed_mud replace #sculk_replaceable_world_gen
execute if score #return temp matches 6..19 run fill ~2 ~-2 ~3 ~-2 ~5 ~-3 packed_mud replace #sculk_replaceable_world_gen


execute if score #return temp matches 27 run place template lzenl:shroomf1 ~-1 ~-1 ~-1 none
execute if score #return temp matches 28 run place template lzenl:shroomf2 ~-2 ~-1 ~-2 none
execute if score #return temp matches 29 run place template lzenl:shroomf3 ~-3 ~-1 ~-3 none
execute if score #return temp matches 30 run place template lzenl:shroomf4 ~-3 ~-2 ~-3 none
execute if score #return temp matches 31 run place template lzenl:shroomf1 ~1 ~-1 ~-1 clockwise_90
execute if score #return temp matches 32 run place template lzenl:shroomf2 ~2 ~-1 ~-2 clockwise_90
execute if score #return temp matches 33 run place template lzenl:shroomf3 ~3 ~-1 ~-3 clockwise_90
execute if score #return temp matches 34 run place template lzenl:shroomf4 ~3 ~-2 ~-3 clockwise_90
execute if score #return temp matches 35 run place template lzenl:shroomf1 ~-1 ~-1 ~1 counterclockwise_90
execute if score #return temp matches 36 run place template lzenl:shroomf2 ~-2 ~-1 ~2 counterclockwise_90
execute if score #return temp matches 37 run place template lzenl:shroomf3 ~-3 ~-1 ~3 counterclockwise_90
execute if score #return temp matches 38 run place template lzenl:shroomf4 ~-3 ~-2 ~3 counterclockwise_90
execute if score #return temp matches 39 run place template lzenl:shroomf1 ~1 ~-1 ~1 180
execute if score #return temp matches 40 run place template lzenl:shroomf2 ~2 ~-1 ~2 180
execute if score #return temp matches 41 run place template lzenl:shroomf3 ~3 ~-1 ~3 180
execute if score #return temp matches 42 run place template lzenl:shroomf4 ~3 ~-2 ~3 180



scoreboard players set #return2 temp 1



execute if block ~ ~-1 ~ mycelium run scoreboard players set #return2 temp 0
execute if block ~ ~-1 ~ packed_mud run scoreboard players set #return2 temp 0
execute if block ~ ~-1 ~ #terracotta run execute store result score #return2 temp run random value 0..1
execute if score #return2 temp matches 1 run return fail




execute if score #return temp matches -14 run setblock ~ ~ ~ leaf_litter[segment_amount=1] replace
execute if score #return temp matches -13 run setblock ~ ~ ~ leaf_litter[segment_amount=3,facing=south] replace
execute if score #return temp matches -12 run setblock ~ ~ ~ leaf_litter[segment_amount=3,facing=west] replace
execute if score #return temp matches -10 run setblock ~ ~ ~ leaf_litter[segment_amount=3,facing=north] replace
execute if score #return temp matches -11 run setblock ~ ~ ~ leaf_litter[segment_amount=3,facing=east] replace
execute if score #return temp matches -9..-8 run setblock ~ ~ ~ dead_bush replace
execute if score #return temp matches -7..0 run setblock ~ ~ ~ brown_mushroom replace
execute if score #return temp matches 5 run setblock ~ ~ ~ brown_mushroom replace
execute if score #return temp matches 1..4 run place template lzenl:shroom1 ~-1 ~ ~-1
execute if score #return temp matches 6..10 run place template lzenl:shroom2 ~-1 ~ ~-1
execute if score #return temp matches 14..18 run place template lzenl:shroom3 ~-2 ~ ~-2
execute if score #return temp matches 19 run place template lzenl:shroom4 ~-2 ~-1 ~-3 none
execute if score #return temp matches 20 run place template lzenl:shroom5 ~-3 ~-1 ~-3 none
execute if score #return temp matches 21 run place template lzenl:shroom4 ~3 ~-1 ~-2 clockwise_90
execute if score #return temp matches 22 run place template lzenl:shroom5 ~3 ~-1 ~-3 clockwise_90
execute if score #return temp matches 23 run place template lzenl:shroom4 ~-3 ~-1 ~2 counterclockwise_90
execute if score #return temp matches 24 run place template lzenl:shroom5 ~-3 ~-1 ~3 counterclockwise_90
execute if score #return temp matches 25 run place template lzenl:shroom4 ~2 ~-1 ~3 180
execute if score #return temp matches 26 run place template lzenl:shroom5 ~3 ~-1 ~3 180





