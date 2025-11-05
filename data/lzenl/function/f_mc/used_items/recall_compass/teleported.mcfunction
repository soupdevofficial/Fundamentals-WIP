##
 # teleported.mcfunction
 # 
 #
 # Created by .
##



tp @s ~ ~ ~

spreadplayers ~ ~ 5 5 false @s
execute at @s run particle end_rod ~ ~1.5 ~ 0.0 0.0 0.0 0.1 6 force @s
execute at @s run playsound entity.player.teleport master @a ~ ~1 ~ 1 0 0
