##
 # bloomery.mcfunction
 # 
 #
 # Created by .
##
item replace entity @p[distance=..1] player.cursor from entity @n[tag=crafting_ui,type=donkey] horse.8
execute store result score #req1 .data run clear @p[distance=..1] clay_ball[!custom_data={}] 0
scoreboard players set #return .data 1
execute unless block ~ ~1 ~ water run scoreboard players set #return .data 0
execute unless score #req1 .data matches 36.. run scoreboard players set #return .data 0
execute unless score #return .data matches 1 run function lzenl:uic/crafting/fail
execute unless score #return .data matches 1 run return fail
return 1