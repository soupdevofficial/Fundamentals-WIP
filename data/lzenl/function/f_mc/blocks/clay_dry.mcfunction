##
 # dry.mcfunction
 # 
 #
 # Created by .
##

#check if already dried

# - remove drying process
execute if block ~ ~ ~ water run return fail
execute if block ~ ~-1 ~ wet_sponge run return fail
execute if predicate lzenl:rain positioned over motion_blocking if entity @s[dy=999] run return run scoreboard players set @s[scores={temp=1..}] temp 1

# - execute only when bright enough 10 - 15 range


execute unless block ~ ~-1 ~ sponge unless dimension the_nether unless predicate lzenl:light/is_higher_10 run return fail

scoreboard players add @s temp 1

particle poof ~ ~ ~ 0.1 0.1 0.1 0.005 2
playsound block.fire.extinguish block @a[distance=..15] ~ ~ ~ 0.25 2



execute store result score #return .data run random value -25..25


# - add bonus drying when sky access
execute positioned over motion_blocking if entity @s[dy=999] run scoreboard players add @s temp 1
# extra bonus when on "dry" surface
execute if block ~ ~-1 ~ scaffolding run scoreboard players add @s temp 1
execute if block ~ ~-1 ~ #copper_grates run scoreboard players add @s temp 1
# mega bonus sponge
execute if block ~ ~-1 ~ sponge run scoreboard players add @s temp 10
execute if score #return .data matches 1 if block ~ ~-1 ~ sponge run setblock ~ ~-1 ~ wet_sponge

# ULTRA bonus nether
execute if dimension the_nether run scoreboard players add @s temp 100


scoreboard players add @s temp 1

execute unless score @s[tag=fundamentals.block.clay_mold] temp matches 75.. run return fail
execute unless score @s[tag=fundamentals.block.clay_bucket] temp matches 100.. run return fail
tag @s remove fundamentals.block.clay_wet
tag @s add fundamentals.block.clay_dry
particle poof ~ ~ ~ 0.1 0.1 0.1 0.005 10
playsound block.fire.extinguish block @a[distance=..15] ~ ~ ~ 2 1

execute if entity @s[tag=fundamentals.block.clay_bucket] run return run function lzenl:f_mc/blocks/clay_bucket/p_dry
function lzenl:f_mc/blocks/clay_mold_wet/dried
