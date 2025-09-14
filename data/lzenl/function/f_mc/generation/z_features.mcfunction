##
 # z_features.mcfunction
 # 
 #
 # Created by .
##

forceload add ~ ~
scoreboard players add test .data 1
execute store result storage temp data.offset.x int 1 run random value -25..25
execute store result storage temp data.offset.y int 1 run random value -10..10
execute store result storage temp data.offset.z int 1 run random value -25..25
function lzenl:f_mc/generation/positioned with storage temp data.offset

scoreboard players remove #gen.feature.count .data 1

execute if score #gen.feature.count .data matches 1.. run return run function lzenl:f_mc/generation/z_features

forceload remove ~ ~
