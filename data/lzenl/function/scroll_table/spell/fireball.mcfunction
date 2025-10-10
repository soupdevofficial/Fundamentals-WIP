##
 # fireball.mcfunction
 # 
 #
 # Created by .
##
playsound item.firecharge.use player
execute positioned ~ ~1.62 ~ run summon fireball ^ ^ ^1 {Tags:["motion"]}
execute as @n[tag=motion] at @s run function lzenl:motion/start