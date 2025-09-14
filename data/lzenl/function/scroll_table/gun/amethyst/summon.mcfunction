##
 # sumnon.mcfunction
 # 
 #
 # Created by .
##
playsound item.trident.hit player @a[distance=..20] ~ ~ ~ 0.25 0
playsound minecraft:block.crafter.craft player @a[distance=..20] ~ ~ ~ 1 0
summon spectral_arrow ^ ^ ^1 {pickup:0b,player:1b,life:1199,damage:1d,PierceLevel:2b,Duration:-2,Tags:["motion2"],SoundEvent:"block.amethyst_block.step"}


data modify entity @n[tag=motion2,distance=..1] Owner set from entity @s UUID
execute as @e[tag=motion2,distance=..1.4] at @s run function lzenl:fmlib/start