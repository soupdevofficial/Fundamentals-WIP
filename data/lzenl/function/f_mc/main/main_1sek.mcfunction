##
 # main_10sek.mcfunction
 # 
 #
 # Created by .
##
schedule function lzenl:f_mc/main/main_1sek 1s replace
schedule function lzenl:f_mc/main/main_1min 60s append







execute as @e[tag=fundamentals.block.clay_root,type=interaction] at @s run function lzenl:f_mc/blocks/clay_root


#fishing
execute as @e[tag=fishing,distance=0..,type=armor_stand] at @s run function lzenl:fishing/check

execute as @e[tag=fundamentals.block.small_campfire,tag=lit,distance=0..] at @s if entity @p[distance=..500] run function lzenl:f_mc/blocks/small_campfire/tick

execute as @a at @s run function lzenl:f_mc/main/onplayer_1sek

execute as @e[tag=rift_item,distance=0..,type=item_display] at @s unless entity @n[tag=fd_rift,distance=..21,type=marker] run kill @s


execute as @e[tag=display,distance=0..,type=text_display] unless function lzenl:check/vehicle run kill @s

execute as @e[type=!#not_mob,tag=armor_dmged,distance=0..] at @s if entity @p[distance=..500] run function lzenl:f_mc/gameplay/combat/armor/regenerate

function lzenl:f_mc/boss/leviathan/move

execute as @a[scores={fmc.info=1..}] run function lzenl:f_mc/info
