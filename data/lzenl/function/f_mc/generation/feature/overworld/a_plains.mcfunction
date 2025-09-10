##
 # foret.mcfunction
 # 
 #
 # Created by .
##

scoreboard players remove #gen.offset.limit .data 1

execute if score #gen.offset.limit .data matches ..0 run return fail

execute unless block ~ ~ ~ #replaceable positioned ~ ~1 ~ run return run function lzenl:f_mc/generation/feature/overworld/a_plains
execute if block ~ ~ ~ #replaceable positioned ~ ~-1 ~ if block ~ ~ ~ #replaceable run return run function lzenl:f_mc/generation/feature/overworld/a_plains

execute if block ~ ~ ~ #replaceable unless block ~ ~-1 ~ #sculk_replaceable_world_gen run return fail

execute store result score #return .data run random value 1..1000
execute if score #return .data matches 1..250 run return run function lzenl:f_mc/generation/feature/overworld/f_pebble
execute if score #return .data matches 251..500 run return run function lzenl:f_mc/generation/feature/overworld/f_sticks
execute if score #return .data matches 501..510 run return run function lzenl:f_mc/generation/feature/overworld/f_wayfinder
execute if score #return .data matches 511 run return run function lzenl:f_mc/generation/feature/overworld/f_aurora
execute if score #return .data matches 512 run return run function lzenl:f_mc/generation/feature/end/rift/generate


