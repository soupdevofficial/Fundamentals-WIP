##
 # mold.mcfunction
 # 
 #
 # Created by .
##


scoreboard players add @s .data 1
execute if score @s .data matches 10 run scoreboard players set @s .data 1


execute if score @s .data matches 1 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold_wet/set_mold/sword
execute if score @s .data matches 2 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold_wet/set_mold/axe
execute if score @s .data matches 3 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold_wet/set_mold/pickaxe

execute if score @s .data matches 4 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold_wet/set_mold/hoe
execute if score @s .data matches 5 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold_wet/set_mold/shears
execute if score @s .data matches 6 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold_wet/set_mold/hammer

execute if score @s .data matches 7 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold_wet/set_mold/saw
execute if score @s .data matches 8 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold_wet/set_mold/ingot
execute if score @s .data matches 9 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold_wet/set_mold/standart

playsound minecraft:block.mud.step block @a ~ ~ ~ 0.5 0




particle block{block_state:"gray_concrete_powder"} ~ ~ ~ 0.2 0.1 0.2 0.01 5









