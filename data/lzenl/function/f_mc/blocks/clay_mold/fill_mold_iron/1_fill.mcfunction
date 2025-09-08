##
 # fill.mcfunction
 # 
 #
 # Created by .
##




particle poof ~ ~ ~ 0.0 0.0 0.0 0.1 3
playsound block.fire.extinguish block @a[distance=..10] ~ ~ ~ 1 0


tag @s add fin
execute if score @s .data matches 1 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold/fill_mold_iron/sword
execute if score @s .data matches 2 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold/fill_mold_iron/axe
execute if score @s .data matches 3 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold/fill_mold_iron/pickaxe

execute if score @s .data matches 4 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold/fill_mold_iron/hoe
execute if score @s .data matches 5 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold/fill_mold_iron/shears
execute if score @s .data matches 6 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold/fill_mold_iron/hammer

execute if score @s .data matches 7 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold/fill_mold_iron/saw
execute if score @s .data matches 8 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold/fill_mold_iron/ingot






