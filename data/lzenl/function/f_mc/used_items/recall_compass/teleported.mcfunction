##
 # teleported.mcfunction
 # 
 #
 # Created by .
##

particle reverse_portal ~ ~1.5 ~ 0.0 0.0 0.0 0.4 30

playsound entity.player.teleport master @a ~ ~1 ~ 1 0 0

tp @s ~ ~ ~

spreadplayers ~ ~ 5 5 false @s
