##
 # fall.mcfunction
 # 
 #
 # Created by .
##

scoreboard players set #season_max temp 7
scoreboard players set #season_min temp 4

scoreboard players set #season_hot_max temp 20
scoreboard players set #season_hot_min temp 13

scoreboard players set #season_cold_min temp 1
scoreboard players set #season_cold_max temp -10

gamerule randomTickSpeed 3


gamerule doWeatherCycle true


title @a title {"text":"-[ fall ]-","color":"#B24010"}