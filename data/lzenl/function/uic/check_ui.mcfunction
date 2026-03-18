##
 # check_ui.mcfunction
 # 
 #
 # Created by .
##




execute at @s run function lzenl:uic/use_crafting
title @s actionbar [{"text":"["},{"keybind":"key.sneak"},{"text":"] to Stand Up / ["},{"keybind":"key.inventory"},{"text":"] to Open Crafting"}]


execute at @s on vehicle unless items entity @s saddle wheat_seeds at @s run function lzenl:uic/exit_ui

execute if function lzenl:uic/check_vehicle as @n[tag=crafting_ui,type=donkey,distance=..1] run function lzenl:uic/exit_ui
