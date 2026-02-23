##
 # neutral.mcfunction
 # 
 #
 # Created by .
##
execute if score @s temp <= #season_min temp run scoreboard players add @s temp 4
execute if score @s temp >= #season_max temp run scoreboard players remove @s temp 4

execute if score @s temp <= #season_max temp if entity @n[tag=fundamentals.block.small_campfire,tag=lit,type=interaction,distance=..4] run scoreboard players add @s temp 5
