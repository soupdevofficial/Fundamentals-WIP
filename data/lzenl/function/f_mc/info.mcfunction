##
 # info.mcfunction
 # 
 #
 # Created by .
##



tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nversion: beta 1.0\nCombination goes \n/trigger fmc.info set [numbers]\n\n"

execute if score @s fmc.info matches 1 run tellraw @s " [2] gameplay\n [3] settings\n [4] donations"


execute if score @s fmc.info matches 2 run tellraw @s " [21] crafting\n [22] fishing\n [23] farming\n [24] cooking\n [25] combat\n"


execute if score @s fmc.info matches 21 run tellraw @s " [211] hand crafting\n [212] crafting table\n [213] scroll table"
execute if score @s fmc.info matches 22 run tellraw @s ""
execute if score @s fmc.info matches 23 run tellraw @s ""
execute if score @s fmc.info matches 25 run tellraw @s ""
















scoreboard players reset @s fmc.info
scoreboard players enable @s fmc.info


