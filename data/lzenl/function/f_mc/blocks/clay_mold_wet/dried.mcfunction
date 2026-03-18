##
 # dried.mcfunction
 # 
 #
 # Created by .
##





execute if score @s .data matches 1 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold_dry/set_mold/sword
execute if score @s .data matches 2 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold_dry/set_mold/axe
execute if score @s .data matches 3 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold_dry/set_mold/pickaxe

execute if score @s .data matches 4 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold_dry/set_mold/hoe
execute if score @s .data matches 5 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold_dry/set_mold/shears
execute if score @s .data matches 6 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold_dry/set_mold/hammer

execute if score @s .data matches 7 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold_dry/set_mold/saw
execute if score @s .data matches 8 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold_dry/set_mold/ingot
execute if score @s .data matches 9 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold_dry/set_mold/spear

execute if score @s .data matches 10 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold_dry/set_mold/shovel


execute unless score @s .data matches 1..10 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold_dry/set_mold/standart


tag @s[type=interaction] remove fundamentals.block.clay_wet
tag @s[type=interaction] add fundamentals.block.clay_dry
tag @s[type=interaction] add set

