##
 # bake.mcfunction
 # 
 #
 # Created by .
##
execute unless block ~ ~ ~ #fire run return fail


particle flame ~ ~0.5 ~ 0.0 0.5 0.0 0.05 3

execute on passengers as @s[tag=set] run function lzenl:f_mc/blocks/clay_mold_dry/baked

playsound minecraft:item.firecharge.use block @a ~ ~ ~ 0.25 1.5

tag @s remove dry_clay_mold
tag @s add clay_mold

fill ~ ~ ~ ~ ~ ~ air replace #fire