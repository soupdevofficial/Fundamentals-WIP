##
 # wetting.mcfunction
 # 
 #
 # Created by .
##


function lzenl:f_mc/blocks/clay_mold_dry/bake
execute unless block ~ ~ ~ water run return fail


particle falling_water ~ ~0.5 ~ 0.0 0.5 0.0 0.05 3


execute on passengers run function lzenl:f_mc/blocks/clay_mold_dry/wet

playsound minecraft:entity.villager.work_leatherworker block @a ~ ~ ~ 0.25 1.5

scoreboard players reset @s temp


tag @s remove dry_clay_mold
tag @s add wet_clay_mold