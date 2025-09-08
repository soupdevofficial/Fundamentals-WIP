##
 # teleported.mcfunction
 # 
 #
 # Created by .
##



tp @s ~ ~ ~

spreadplayers ~ ~ 10 10 false @s


execute at @s run particle reverse_portal ~ ~1.5 ~ 0.0 0.0 0.0 0.4 30

execute at @s run playsound entity.player.teleport master @a ~ ~1 ~ 1 0 0