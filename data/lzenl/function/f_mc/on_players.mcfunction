##
 # on_players.mcfunction
 # 
 #
 # Created by .
##




#This is running on players every tick -> pretty demanding


#setting attributes (base stats)
execute as @s[tag=!attributes_set] run function lzenl:f_mc/gameplay/player/set_attributes

#(fishing check) -> very light checks
execute if score @s fishing matches 1.. at @s run function lzenl:fishing/start

#check for sitting
execute at @s as @n[type=donkey,tag=crafting_ui,tag=ui_open,distance=..1] at @s if function lzenl:uic/check_passenger run function lzenl:uic/exit_ui
execute as @s[tag=ui_open] at @s run function lzenl:uic/use_crafting
execute as @s[tag=ui_open] unless function lzenl:uic/check_vehicle run title @s actionbar [{"text":"["},{"keybind":"key.sneak"},{"text":"] to Stand Up / ["},{"keybind":"key.inventory"},{"text":"] to Open Crafting"}]
execute as @s[tag=ui_open] at @s if function lzenl:uic/check_vehicle run function lzenl:uic/exit_ui

#ui logic do NOT touch
execute if items entity @s container.* *[item_name="execute"] at @s run function lzenl:uic/set_ui
scoreboard players enable @s fmc.info