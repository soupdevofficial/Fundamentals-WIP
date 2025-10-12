##
 # delayed_conditional_1t.mcfunction
 # 
 #
 # Created by .
##
execute as @a[tag=used_pebble] run function lzenl:f_mc/gameplay/log_conv/convert

execute as @a[tag=check] run function lzenl:rc/check with entity @s

execute as @e[tag=scale] at @s if entity @p[distance=..7] run function lzenl:f_mc/blocks/bloomery/rescale
execute as @e[tag=scale_2] at @s if entity @p[distance=..7] run function lzenl:f_mc/blocks/clay_bucket/rescale

execute as @a[tag=astral_move] run function lzenl:f_mc/gameplay/player/astral/reset

execute if score #htm .data matches 1 as @e if function lzenl:f_mc/gameplay/combat/run_as_entity run function lzenl:f_mc/gameplay/combat/hit
execute if score #htm .data matches 1 run scoreboard players reset #htm .data
execute as @a[tag=pl_hit] run function lzenl:f_mc/gameplay/combat/armor/check

execute as @a[tag=reset] run function lzenl:f_mc/gameplay/combat/reset with entity @s

execute as @a[tag=ouchy] run function lzenl:f_mc/gameplay/combat/armor/apply_ouchy with storage f_mc:combat data.final_dmg