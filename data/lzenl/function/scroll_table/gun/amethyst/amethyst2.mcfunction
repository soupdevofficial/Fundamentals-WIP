##
 # amethyst.mcfunction
 # 
 #
 # Created by .
##
execute if items entity @s weapon.offhand *[custom_data~{spell:{gun:{shots:0}}}] run return run function lzenl:scroll_table/gun/amethyst/reload2
execute store result score #shots .data run data get entity @s equipment.offhand.components."minecraft:custom_data".spell.gun.shots
execute store result storage temp data.shots int 1 run scoreboard players remove #shots .data 1
function lzenl:scroll_table/gun/amethyst/set_shots2 with storage temp data
execute positioned ~ ~1.3 ~ run function lzenl:scroll_table/gun/amethyst/summon