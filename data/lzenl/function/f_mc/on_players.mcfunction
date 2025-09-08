##
 # on_players.mcfunction
 # 
 #
 # Created by .
##

#player set
execute as @s[tag=!attributes_set] run function lzenl:f_mc/gameplay/player/set_attributes

#player reset temp
execute as @s[scores={died=1..}] run function lzenl:f_mc/gameplay/player/temp/temp_reset
execute as @s[tag=astral] at @s rotated ~ 0 positioned ^ ^ ^-0.5 run function lzenl:f_mc/gameplay/player/astral/body

execute at @s as @n[type=donkey,tag=crafting_ui,tag=ui_open,distance=..1] at @s if function lzenl:uic/check_passenger run function lzenl:uic/exit_ui

execute as @s[tag=ui_open] at @s run function lzenl:uic/use_crafting
execute as @s[tag=ui_open] unless function lzenl:uic/check_vehicle run title @s actionbar [{"text":"["},{"keybind":"key.sneak"},{"text":"] to Stand Up / ["},{"keybind":"key.inventory"},{"text":"] to Open Crafting"}]
execute as @s[tag=ui_open] at @s if function lzenl:uic/check_vehicle run function lzenl:uic/exit_ui
















clear @s *[item_name="execute"]
