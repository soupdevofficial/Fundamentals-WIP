##
 # aurora.mcfunction
 # 
 #
 # Created by .
##







# Hero Aurora, bringer of the dawn
scoreboard players set #temp temp 0


execute on target run function lzenl:f_mc/gameplay/combat/hero/aurora/find_text
execute on attacker run function lzenl:f_mc/gameplay/combat/hero/aurora/unlock




execute at @s if score #temp temp matches 1 run particle minecraft:end_rod ~ ~1.5 ~ 0 0 0 0.1 10





















