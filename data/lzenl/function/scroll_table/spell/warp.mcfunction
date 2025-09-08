##
 # fireball.mcfunction
 # 
 #
 # Created by .
##

playsound entity.ender_pearl.throw player

execute positioned ~ ~1.62 ~ run summon ender_pearl ^ ^ ^1 {Tags:["motion"]}

data modify entity @n[tag=motion,type=ender_pearl] Owner set from entity @s UUID

execute as @n[tag=motion] at @s run function lzenl:fmlib/start