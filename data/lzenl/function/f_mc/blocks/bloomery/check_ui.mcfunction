##
 # check_ui.mcfunction
 # 
 #
 # Created by .
##
execute on passengers run title @s actionbar [{"text":"["},{"keybind":"key.sneak"},{"text":"] and ["},{"keybind":"key.use"},{"text":"] to Open Bloomery"}]

execute on passengers run ride @s dismount



execute as @n[type=donkey,tag=bloomery_ui,distance=..100] at @s run function lzenl:f_mc/blocks/bloomery/return

execute unless items entity @s saddle stone_button[item_name="execute"] run data modify entity @s equipment.saddle set value {components:{"minecraft:custom_name":{"text":"Exit UI",italic:false},"item_name":"execute",item_model:"barrier"},id:"stone_button"}

execute if items entity @s horse.0 gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true}] if items entity @s horse.2 gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true}] if items entity @s horse.3 gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true}] if items entity @s horse.4 gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true}] if items entity @s horse.5 gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true}] if items entity @s horse.6 gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true}] if items entity @s horse.7 gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true}] if items entity @s horse.8 stone_button[item_name="execute"] if items entity @s horse.9 gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true}] if items entity @s horse.10 gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true}] if items entity @s horse.12 gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true}] if items entity @s horse.13 gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true}] if items entity @s horse.14 gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true}] run return fail

execute as @a[distance=..7] if items entity @s container.* *[item_name="execute"] run tag @s add user
execute as @a[distance=..7] if items entity @s player.cursor *[item_name="execute"] run tag @s add user

function lzenl:f_mc/blocks/bloomery/set_ui

