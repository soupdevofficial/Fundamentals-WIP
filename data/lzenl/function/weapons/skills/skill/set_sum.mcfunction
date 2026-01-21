##
 # sound.mcfunction
 # 
 #
 # Created by .
##
data merge entity @s {view_range:20f}

playsound item.trident.throw player @a[distance=..10] ~ ~ ~ 0.25 1
particle minecraft:enchant ~ ~-0.25 ~ 0.1 0.1 0.1 0.5 3