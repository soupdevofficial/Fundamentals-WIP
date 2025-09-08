##
 # cold.mcfunction
 # 
 #
 # Created by .
##
execute if score #time .data matches 1.. if score @s temp <= #season_cold_min temp run scoreboard players add @s temp 3
execute if score #time .data matches 1.. if score @s temp >= #season_cold_min temp run scoreboard players remove @s temp 3

execute if score #time .data matches 0 if score @s temp <= #season_cold_max temp run scoreboard players add @s temp 3
execute if score #time .data matches 0 if score @s temp >= #season_cold_max temp run scoreboard players remove @s temp 3


execute if score @s temp <= #season_cold_min temp if entity @n[tag=small_campfire,tag=lit,type=interaction,distance=..4] run scoreboard players add @s temp 5
