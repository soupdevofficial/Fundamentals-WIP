##
 # winter.mcfunction
 # 
 #
 # Created by .
##

scoreboard players set #season_max temp 17
scoreboard players set #season_min temp 0



scoreboard players set #season_hot_max temp 25
scoreboard players set #season_hot_min temp 20

scoreboard players set #season_cold_min temp 2
scoreboard players set #season_cold_max temp -35

gamerule randomTickSpeed 1



gamerule doWeatherCycle true

title @a title {"text":"-[ winter ]-","color":"aqua"}