##
 # fish_water.mcfunction
 # 
 #
 # Created by .
##
particle bubble_column_up ~ ~ ~ 0.1 0 0.1 0.01 0 force @a
execute positioned over world_surface run particle bubble_pop ~ ~ ~ 1 0 1 0.01 5 force @a

#fishing
execute store result score #return .data run random value 1..100
execute at @s if entity @p[distance=..10] run return run function lzenl:fishing/obstructed

scoreboard players set #fishchance .data 5
execute if predicate lzenl:rain run scoreboard players add #fishchance .data 5

#get bonus chance (lure)
execute at @a[distance=..50] if score @s .id = @p[distance=0] .id as @p[distance=0] run function lzenl:fishing/on_fisher

scoreboard players operation #fishchance .data += #fish_bonus .data
execute unless score #fishchance .data >= #return .data run return fail

function lzenl:fishing/caught
execute at @a[distance=..50] if score @s .id = @p[distance=0] .id as @p[distance=0] run function lzenl:fishing/on_fisher_caught

#minigame start
tag @s add caught
tag @s add water