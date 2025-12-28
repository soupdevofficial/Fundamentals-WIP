execute unless items entity @s horse.0 air unless items entity @s horse.0 bow[item_name="execute"] run item replace entity @p[distance=..1] player.cursor from entity @s horse.0
execute unless items entity @s horse.1 air unless items entity @s horse.1 bow[item_name="execute"] run item replace entity @p[distance=..1] player.cursor from entity @s horse.1
execute unless items entity @s horse.2 air unless items entity @s horse.2 bow[item_name="execute"] run item replace entity @p[distance=..1] player.cursor from entity @s horse.2
execute unless items entity @s horse.3 air unless items entity @s horse.3 bow[item_name="execute"] run item replace entity @p[distance=..1] player.cursor from entity @s horse.3
execute unless items entity @s horse.4 air unless items entity @s horse.4 bow[item_name="execute"] run item replace entity @p[distance=..1] player.cursor from entity @s horse.4
execute unless items entity @s horse.5 air unless items entity @s horse.5 bow[item_name="execute"] run item replace entity @p[distance=..1] player.cursor from entity @s horse.5
execute unless items entity @s horse.6 air unless items entity @s horse.6 bow[item_name="execute"] run item replace entity @p[distance=..1] player.cursor from entity @s horse.6
execute unless items entity @s horse.7 air unless items entity @s horse.7 bow[item_name="execute"] run item replace entity @p[distance=..1] player.cursor from entity @s horse.7
execute unless items entity @s horse.8 air unless items entity @s horse.8 bow[item_name="execute"] run item replace entity @p[distance=..1] player.cursor from entity @s horse.8
execute unless items entity @s horse.9 air unless items entity @s horse.9 bow[item_name="execute"] run item replace entity @p[distance=..1] player.cursor from entity @s horse.9
execute unless items entity @s horse.10 air unless items entity @s horse.10 bow[item_name="execute"] run item replace entity @p[distance=..1] player.cursor from entity @s horse.10
execute unless items entity @s horse.11 air unless items entity @s horse.11 bow[item_name="execute"] run item replace entity @p[distance=..1] player.cursor from entity @s horse.11
execute unless items entity @s horse.12 air unless items entity @s horse.12 bow[item_name="execute"] run item replace entity @p[distance=..1] player.cursor from entity @s horse.12
execute unless items entity @s horse.13 air unless items entity @s horse.13 bow[item_name="execute"] run item replace entity @p[distance=..1] player.cursor from entity @s horse.13
execute unless items entity @s horse.14 air unless items entity @s horse.14 bow[item_name="execute"] run item replace entity @p[distance=..1] player.cursor from entity @s horse.14

#return page
execute unless score @s .data matches 2 run function lzenl:uic/set_ui1
execute if score @s .data matches 2 run function lzenl:uic/set_ui2