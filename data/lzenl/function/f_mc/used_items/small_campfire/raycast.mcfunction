##
 # raycast.mcfunction
 # 
 #
 # Created by .
##


execute positioned ^ ^ ^0.2 unless block ~ ~ ~ #replaceable positioned ^ ^ ^-0.3 run return run function lzenl:f_mc/used_items/small_campfire/place


execute unless entity @s[distance=..6] if block ~ ~ ~ #replaceable run return run give @p wooden_pickaxe[repair_cost=99,!attribute_modifiers,item_model="minecraft:campfire",item_name="Small Campfire",consumable={consume_seconds:0.0,animation:"block",has_consume_particles:false}] 1



execute positioned ^ ^ ^0.2 if block ~ ~ ~ #replaceable run function lzenl:f_mc/used_items/small_campfire/raycast
