##
 # baked.mcfunction
 # 
 #
 # Created by .
##
execute unless score @s[type=interaction] .data matches 1..11 on vehicle on passengers run scoreboard players set @s .data 11

execute if score @s .data matches 1 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold/set_mold/sword
execute if score @s .data matches 2 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold/set_mold/axe
execute if score @s .data matches 3 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold/set_mold/pickaxe

execute if score @s .data matches 4 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold/set_mold/hoe
execute if score @s .data matches 5 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold/set_mold/shears
execute if score @s .data matches 6 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold/set_mold/hammer

execute if score @s .data matches 7 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold/set_mold/saw
execute if score @s .data matches 8 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold/set_mold/ingot

execute if score @s .data matches 9 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold/set_mold/spear


execute if score @s .data matches 10 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold/set_mold/shovel


execute if score @s .data matches 11 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold/set_mold/standart






tag @s[type=interaction] remove fundamentals.block.dry_clay_mold
tag @s[type=interaction] add fundamentals.block.clay_mold
tag @s[type=interaction] add set