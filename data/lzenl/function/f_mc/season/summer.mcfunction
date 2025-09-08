##
 # summer.mcfunction
 # 
 #
 # Created by .
##

scoreboard players set #season_max temp 29
scoreboard players set #season_min temp 15



scoreboard players set #season_hot_max temp 42
scoreboard players set #season_hot_min temp 35

scoreboard players set #season_cold_min temp 15
scoreboard players set #season_cold_max temp 5

gamerule randomTickSpeed 3



weather clear
gamerule doWeatherCycle false

title @a title {"text":"-[ summer ]-","color":"gold"}