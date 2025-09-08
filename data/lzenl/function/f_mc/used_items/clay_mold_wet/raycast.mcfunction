##
 # raycast.mcfunction
 # 
 #
 # Created by .
##



execute positioned ^ ^ ^0.2 unless block ~ ~ ~ #replaceable positioned ^ ^ ^-0.3 run return run function lzenl:f_mc/used_items/clay_mold_wet/place


execute unless entity @s[distance=..6] if block ~ ~ ~ #replaceable run return run give @p wooden_pickaxe[repair_cost=99,!attribute_modifiers,item_name="Wet Clay Mold",!tool,max_damage=99,!weapon,consumable={consume_seconds:0.0,animation:"block",sound:"minecraft:intentionally_empty",has_consume_particles:false,on_consume_effects:[]},item_model="minecraft:gray_carpet"] 1



execute positioned ^ ^ ^0.2 if block ~ ~ ~ #replaceable run function lzenl:f_mc/used_items/clay_mold_wet/raycast
