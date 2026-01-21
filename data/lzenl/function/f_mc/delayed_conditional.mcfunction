##
 # delayed_conditional_1t.mcfunction
 # 
 #
 # Created by .
##


#better consumeables logic
execute as @a[tag=check] run function lzenl:rc/check with entity @s

#custom block hb scaling
execute as @e[tag=scale] at @s if entity @p[distance=..7] run function lzenl:f_mc/blocks/bloomery/rescale
execute as @e[tag=scale_2] at @s if entity @p[distance=..7] run function lzenl:f_mc/blocks/clay_bucket/rescale

#maybe delete this
execute as @a[tag=astral_move] run function lzenl:f_mc/gameplay/player/astral/reset

#combat stuff
execute if score #htm .data matches 1 at @a[tag=attacker_prev] as @e[tag=!isblock,distance=..100] if function lzenl:f_mc/gameplay/combat/run_as_entity run function lzenl:f_mc/gameplay/combat/hit
execute if score #htm .data matches 1 run scoreboard players reset #htm .data
tag @a[tag=attacker_prev] remove attacker_prev
execute as @a[tag=pl_hit] run function lzenl:f_mc/gameplay/combat/armor/check
execute as @a[tag=ouchy] run function lzenl:f_mc/gameplay/combat/armor/apply_ouchy with storage f_mc:combat data.final_dmg