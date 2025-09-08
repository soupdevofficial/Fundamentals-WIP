##
 # start.mcfunction
 # 
 #
 # Created by .
##

setblock ~ ~ ~ beehive

execute store result storage temp data.offset.x int 1 run random value -25..25
execute store result storage temp data.offset.y int 1 run random value -25..25
execute store result storage temp data.offset.z int 1 run random value -25..25


function lzenl:f_mc/generation/positioned with storage temp data.offset