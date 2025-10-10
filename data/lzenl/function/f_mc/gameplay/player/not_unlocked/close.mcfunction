##
 # close.mcfunction
 # 
 #
 # Created by .
##
advancement revoke @s only lzenl:f_mc/check/used


execute if entity @s[advancements={lzenl:game/7_crafting=true}] run return fail
title @s actionbar "You haven't unlocked this Block yet!"
data modify storage temp data.pos.dim set from entity @s Dimension

data modify storage temp data.pos.x set from entity @s Pos[0]
data modify storage temp data.pos.y set from entity @s Pos[1]
data modify storage temp data.pos.z set from entity @s Pos[2]

execute unless predicate lzenl:the_end in minecraft:the_end run tp @s ~ ~ ~
execute if predicate lzenl:the_end in minecraft:overworld run tp @s ~ ~ ~


function lzenl:f_mc/gameplay/player/not_unlocked/tp with storage temp data.pos