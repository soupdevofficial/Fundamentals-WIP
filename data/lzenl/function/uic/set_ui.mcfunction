execute unless function lzenl:check/vehicle run return run clear @s *[item_name="execute"]

execute if items entity @s player.cursor * run function lzenl:uic/replace_main
item replace entity @s player.cursor with air
execute on vehicle run function lzenl:uic/check_ill

clear @s *[item_name="execute"]