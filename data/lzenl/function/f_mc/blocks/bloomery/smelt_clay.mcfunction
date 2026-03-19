##
 # smelt_clay.mcfunction
 # 
 #
 # Created by .
##
execute if score @s .id matches ..-1 if items block ~ ~-1 ~ container.15 *[!count=64] run item modify block ~ ~-1 ~ container.15 { "function": "minecraft:set_count", "count": 1, "add": true }
execute unless items block ~ ~-1 ~ container.15 * if score @s .id matches ..-1 run function lzenl:f_mc/blocks/bloomery/smelt_add











item modify block ~ ~-1 ~ container.4 { "function": "minecraft:set_count", "count": -1, "add": true }
item modify block ~ ~-1 ~ container.22 { "function": "minecraft:set_count", "count": -1, "add": true }

scoreboard players remove #smelt .data 1


execute if score #smelt .data matches 1.. if items block ~ ~-1 ~ container.4 * if items block ~ ~-1 ~ container.15 *[!count=64] run return run function lzenl:f_mc/blocks/bloomery/smelt_clay