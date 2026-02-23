##
 # remove_from_stored.mcfunction
 # 
 #
 # Created by .
##
summon item ~ ~ ~ {Invulnerable:true,PickupDelay:999,Item:{id:stone_button},Tags:["set_item"]}
$data modify entity @e[distance=..0.1,type=item,limit=1,tag=set_item] Item set from entity @s item.components."minecraft:custom_data".stored_ench[$(index)]
$data remove entity @s item.components."minecraft:custom_data".stored_ench[$(index)]
execute as @e[distance=..0.1,type=item,tag=set_item,limit=1] at @s run function lzenl:arcane_altar_2/modify_removed_item
scoreboard players set #removed_ench .data 1