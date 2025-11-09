##
 # on_players.mcfunction
 # 
 #
 # Created by .
##
#player set
execute as @s[tag=!attributes_set] run function lzenl:f_mc/gameplay/player/set_attributes



execute as @s[tag=astral] at @s rotated ~ 0 positioned ^ ^ ^-0.5 run function lzenl:f_mc/gameplay/player/astral/body

execute at @s as @n[type=donkey,tag=crafting_ui,tag=ui_open,distance=..1] at @s if function lzenl:uic/check_passenger run function lzenl:uic/exit_ui

execute as @s[tag=ui_open] at @s run function lzenl:uic/use_crafting
execute as @s[tag=ui_open] unless function lzenl:uic/check_vehicle run title @s actionbar [{"text":"["},{"keybind":"key.sneak"},{"text":"] to Stand Up / ["},{"keybind":"key.inventory"},{"text":"] to Open Crafting"}]
execute as @s[tag=ui_open] at @s if function lzenl:uic/check_vehicle run function lzenl:uic/exit_ui

execute as @s[tag=nbs_allsoulsho] run scoreboard players operation @s nbs_allsoulsho += speed nbs_allsoulsho
execute as @s[tag=nbs_allsoulsho] at @s run function lzenl:music/all_souls_hollow/tree/0_255


clear @s *[item_name="execute"]


