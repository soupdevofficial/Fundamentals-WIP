##
 # check_player_cursor.mcfunction
 # 
 #
 # Created by .
##


execute if items entity @s player.cursor *[item_name=execute] run return fail

execute at @s run summon item ~ ~ ~ {PickupDelay:1,Item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:item_name":"execute","minecraft:item_model":"air"}}}
execute at @s as @e[type=item,distance=..1] if items entity @s contents *[item_name=execute] run item replace entity @s contents from entity @p player.cursor
item replace entity @p[tag=user,distance=..6] player.cursor with air

return fail