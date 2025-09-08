##
 # raycast.mcfunction
 # 
 #
 # Created by .
##



execute positioned ^ ^ ^0.2 unless block ~ ~ ~ #replaceable positioned ^ ^ ^-0.3 run return run function lzenl:scroll_table/place
execute unless entity @s[distance=..6] if block ~ ~ ~ #replaceable run return run give @p stone_pickaxe[item_model="enchanting_table",item_name="Scroll Table",!tool,consumable={consume_seconds:0,animation:"none",sound:"intentionally_empty",has_consume_particles:false},!attribute_modifiers] 1

execute positioned ^ ^ ^0.2 if block ~ ~ ~ #replaceable run function lzenl:f_mc/used_items/scroll_table/raycast
