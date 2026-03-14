##
 # bake.mcfunction
 # 
 #
 # Created by .
##
execute unless block ~ ~ ~ #fire run return fail


execute store result score #return .data run random value 1..3

execute if score #return .data matches 1..2 run return fail

particle flame ~ ~0.5 ~ 0.0 0.5 0.0 0.05 3

execute on passengers as @s[tag=set] run function lzenl:f_mc/blocks/clay_mold_dry/baked

playsound minecraft:item.firecharge.use block @a ~ ~ ~ 0.125 1.5

tag @s remove fundamentals.block.dry_clay_mold
tag @s add fundamentals.block.clay_mold

fill ~ ~ ~ ~ ~ ~ air replace #fire