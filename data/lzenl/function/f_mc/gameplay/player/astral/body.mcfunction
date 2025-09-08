##
 # body.mcfunction
 # 
 #
 # Created by .
##


execute positioned ~ ~0.25 ~ run tp @n[tag=astral_body,type=block_display,distance=..100] ~ ~ ~

execute as @e[tag=astral_b1,type=item_display,distance=..3] run rotate @s ~ 0
execute at @s as @n[tag=astral_b2,type=item_display,distance=..3] run rotate @s ~ ~



#item modify entity @s weapon.mainhand {function:"set_components",components:{"item_model":"air"}}








data modify storage animations data.wings set value {l:15,r:-15}


execute run function lzenl:f_mc/gameplay/player/astral/wings with storage animations data.wings





