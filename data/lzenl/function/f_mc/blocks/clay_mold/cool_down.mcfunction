##
 # cool_down.mcfunction
 # 
 #
 # Created by .
##



execute if score @s .data matches 0 run return fail



execute unless score @s active matches 0..50 at @n[distance=..0.3,tag=clay_bucket,type=item_display,scores={active=1..}] run function lzenl:f_mc/blocks/clay_mold/fill_mold_lava/1_fill

execute if score @s active matches 1..50 run scoreboard players remove @s active 1
execute if score @s active matches 1..50 run particle campfire_cosy_smoke ~ ~0.1 ~ ~ ~500 ~ 0.00001 0 force @a[distance=..7]



execute unless score @s active matches 0 run return fail

execute if score @s .id matches 0 run function lzenl:f_mc/blocks/clay_mold/fill_mold_copper/1_fill
execute if score @s .id matches 1 run function lzenl:f_mc/blocks/clay_mold/fill_mold_iron/1_fill
execute if score @s .id matches 2 run function lzenl:f_mc/blocks/clay_mold/fill_mold_gold/1_fill