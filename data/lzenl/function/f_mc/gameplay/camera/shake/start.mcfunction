##
 # start.mcfunction
 # 
 #
 # Created by .
##





execute store result storage temp data.camera.x double 0.15 run random value -10..10
execute store result storage temp data.camera.y double 0.15 run random value -10..10

execute at @s run function lzenl:f_mc/gameplay/camera/shake/init with storage temp data.camera

scoreboard players remove @s[scores={animation=1..}] animation 1