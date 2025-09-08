##
 # raycast.mcfunction
 # 
 #
 # Created by .
##

kill @e[distance=..1,tag=hb,type=shulker]
execute positioned ^ ^ ^0.2 unless block ~ ~ ~ #replaceable positioned ^ ^ ^-0.3 run return run function lzenl:f_mc/used_items/bloomery/place

execute unless entity @s[distance=..6] if block ~ ~ ~ #replaceable run return run give @p wooden_pickaxe[repair_cost=99,!attribute_modifiers,item_name="Bloomery",!tool,max_damage=99,!weapon,consumable={consume_seconds:0.0,animation:"block",sound:"minecraft:intentionally_empty",has_consume_particles:false,on_consume_effects:[]},item_model="minecraft:decorated_pot"] 1



execute positioned ^ ^ ^0.2 if block ~ ~ ~ #replaceable run function lzenl:f_mc/used_items/bloomery/raycast
