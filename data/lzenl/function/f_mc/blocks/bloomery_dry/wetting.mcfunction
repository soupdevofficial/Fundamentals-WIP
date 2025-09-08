##
 # wetting.mcfunction
 # 
 #
 # Created by .
##

function lzenl:f_mc/blocks/bloomery_dry/baking

execute unless block ~ ~ ~ water run return fail



particle minecraft:falling_water ~ ~0.5 ~ 0.51 0.51 0.51 0.25 10
playsound minecraft:entity.villager.work_leatherworker block @a ~ ~ ~ 1 0
execute on passengers run function lzenl:f_mc/blocks/bloomery_dry/wet


tag @s remove bloomery_dry
tag @s add bloomery_wet

