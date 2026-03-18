##
 # dry.mcfunction
 # 
 #
 # Created by .
##

#check if already dried

execute unless block ~ ~ ~ water unless predicate lzenl:rain run return fail
execute if predicate lzenl:rain positioned over motion_blocking unless entity @s[dy=999] run return fail

execute unless score @s temp matches -100..20 run scoreboard players set @s temp 20
scoreboard players remove @s temp 1

particle falling_water ~ ~0.5 ~ 0.25 0.2 0.25 0.005 5
playsound entity.generic.splash block @a ~ ~ ~ 0.2 2

#bonus in water
execute if block ~ ~ ~ water run scoreboard players remove @s temp 10

execute unless score @s temp matches ..-10 run return fail
tag @s remove fundamentals.block.clay_dry
tag @s add fundamentals.block.clay_wet
particle fishing ~ ~0.2 ~ 0.5 0.3 0.5 0.5 10

execute if block ~ ~ ~ water run particle bubble_column_up ~ ~ ~ 0.5 0.3 0.5 0.00001 10
playsound entity.player.splash block @a[distance=..15] ~ ~ ~ 2 1

execute if entity @s[tag=fundamentals.block.clay_bucket] run return run function lzenl:f_mc/blocks/clay_bucket/p_wet
function lzenl:f_mc/blocks/clay_mold_dry/wet