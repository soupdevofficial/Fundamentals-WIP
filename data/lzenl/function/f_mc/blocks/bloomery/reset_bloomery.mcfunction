##
 # reset_bloomery.mcfunction
 # 
 #
 # Created by .
##
tag @s remove fundamentals.data.was_inactive
scoreboard players operation @s active = #world.global.time .data

