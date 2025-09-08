##
 # stay_in.mcfunction
 # 
 #
 # Created by .
##


execute as @n[distance=0,type=donkey] run item replace entity @s weapon.mainhand from entity @s horse.1
item replace entity @n[distance=0,type=donkey] horse.1 from entity @s player.cursor
item replace entity @s player.cursor from entity @n[distance=0,type=donkey] weapon.mainhand

damage @s 5 on_fire



