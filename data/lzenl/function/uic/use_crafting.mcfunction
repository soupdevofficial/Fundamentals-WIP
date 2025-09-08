##
 # use_crafting.mcfunction
 # 
 #
 # Created by .
##
execute unless items entity @s player.cursor *[item_name="execute"] run return fail

summon item_display ~ ~ ~ {Tags:["crafting_selected"]}

item replace entity @n[type=item_display,tag=crafting_selected,distance=..1] contents from entity @s player.cursor
execute as @n[type=item_display,tag=crafting_selected,distance=..1] at @s run function lzenl:uic/crafting_execute with entity @s item.components.minecraft:custom_data

execute as @n[type=donkey,tag=crafting_ui,distance=..1] run function lzenl:uic/set_ui

clear @s *[item_name="execute"]