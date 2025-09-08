##
 # unlock.mcfunction
 # 
 #
 # Created by .
##




execute unless score @s aurora matches 1.. run return fail
execute if score @s aurora matches ..2 run return fail
execute if score @s aurora matches 4 run return fail
execute if score @s aurora matches 6 run return fail
execute if score @s aurora matches 8 run return fail
execute if score @s aurora matches 10 run return fail
execute if score @s aurora matches 12 run return fail
execute if score @s aurora matches 14.. run return fail





execute if score @s aurora matches 3 store success score #temp temp run function lzenl:f_mc/gameplay/combat/hero/aurora/1

execute if score @s aurora matches 5 store success score #temp temp run function lzenl:f_mc/gameplay/combat/hero/aurora/2

execute if score @s aurora matches 7 store success score #temp temp run function lzenl:f_mc/gameplay/combat/hero/aurora/3

execute if score @s aurora matches 9 store success score #temp temp run function lzenl:f_mc/gameplay/combat/hero/aurora/4

execute if score @s aurora matches 11 store success score #temp temp run function lzenl:f_mc/gameplay/combat/hero/aurora/5

execute if score @s aurora matches 13 store success score #temp temp run function lzenl:f_mc/gameplay/combat/hero/aurora/6



execute if score #temp temp matches 1 as @s[scores={aurora=2..}] run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1 2
execute if score #temp temp matches 0 run title @s actionbar {text:"Thou are missing experience..."} 

execute if score #temp temp matches 0 run return fail

title @s actionbar {text:"The Dawn shall pave thy path..."} 
scoreboard players add @s aurora 1


