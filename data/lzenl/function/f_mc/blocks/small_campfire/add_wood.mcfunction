##
 # add_wood.mcfunction
 # 
 #
 # Created by .
##

execute if score @n[type=interaction,distance=0] active matches 500.. run return run title @s actionbar "You can't find a place to put the stick in"


scoreboard players add @n[type=interaction,distance=0] active 100
item modify entity @s weapon.mainhand {"function":"minecraft:set_count","count":-1,"add":true}

particle block{block_state:{Name:"oak_log"}} ~ ~0.25 ~ 0.1 0.1 0.1 0.1 10
playsound block.wood.place block @a[distance=..15] ~ ~ ~ 10 0

title @s actionbar "The burning was lengthened by 100sek"