##
 # get.mcfunction
 # 
 #
 # Created by .
##



scoreboard players set #temp .data 0
execute if score @s .id matches 0 if function lzenl:f_mc/blocks/clay_mold/copper run scoreboard players set #temp .data 1
execute if score @s .id matches 1 if function lzenl:f_mc/blocks/clay_mold/iron run scoreboard players set #temp .data 1
execute if score @s .id matches 2 if function lzenl:f_mc/blocks/clay_mold/gold run scoreboard players set #temp .data 1
execute if score #temp .data matches 0 run return fail


execute if score @s .data matches 1 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold/set_mold/sword
execute if score @s .data matches 2 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold/set_mold/axe
execute if score @s .data matches 3 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold/set_mold/pickaxe
execute if score @s .data matches 4 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold/set_mold/hoe
execute if score @s .data matches 5 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold/set_mold/shears
execute if score @s .data matches 6 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold/set_mold/hammer
execute if score @s .data matches 7 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold/set_mold/saw
execute if score @s .data matches 8 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold/set_mold/ingot



execute if score @s .id matches 0 on target run advancement grant @s only lzenl:game/6_copper
execute if score @s .id matches 1 on target run advancement grant @s only lzenl:game/6_iron
execute if score @s .id matches 2 on target run advancement grant @s only lzenl:game/6_gold


playsound minecraft:entity.item_frame.remove_item block @a[distance=..25] ~ ~ ~ 10 0.75



tag @s remove fin
scoreboard players reset @s active
scoreboard players reset @s .id
