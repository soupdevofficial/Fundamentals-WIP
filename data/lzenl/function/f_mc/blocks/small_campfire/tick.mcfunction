##
 # tick.mcfunction
 # 
 #
 # Created by .
##
particle flame ~ ~0.3 ~ 0.05 0.125 0.05 0.01 10
particle lava ~ ~-0.5 ~ 0.05 0.125 0.05 0.001 1

execute as @e[distance=0.1..0.5] run damage @s 1 in_fire at ~ ~ ~

playsound block.campfire.crackle block @a ~ ~ ~ 0.5 1

rotate @s ~ 0

particle campfire_cosy_smoke ~ ~1 ~ ^ ^100000 ^ 0.0000005 0 force @a

scoreboard players remove @s active 1

execute if block ~ ~0.5 ~ light if score @s active matches 1.. run return fail

summon item ~ ~0.25 ~ {PickupDelay:3,Motion:[0.0,0.25,0.0],Item:{id:"minecraft:charcoal",count:1}}

function lzenl:f_mc/blocks/small_campfire/is_lit
function lzenl:f_mc/blocks/small_campfire/break