##
 # main_10sek.mcfunction
 # 
 #
 # Created by .
##
schedule function lzenl:f_mc/main/main_1sek 1s replace
schedule function lzenl:f_mc/main/main_1min 60s append

execute as @a at @s if predicate lzenl:the_nether run scoreboard players set @s temp 666

execute as @e[type=armor_stand,tag=clay_bucket] at @s if entity @p[distance=..7] run tag @s remove picked
execute as @e[type=donkey,tag=bloomery_ui] at @s if entity @p[distance=..500] run function lzenl:f_mc/blocks/bloomery/melting
execute as @e[tag=small_campfire,tag=lit] at @s if entity @p[distance=..500] run function lzenl:f_mc/blocks/small_campfire/tick
execute as @e[tag=clay_bucket,type=item_display] at @s if entity @p[distance=..500] run function lzenl:f_mc/blocks/clay_bucket/cool_down
execute as @e[tag=clay_mold,type=interaction,tag=!fin] at @s if entity @p[distance=..500] run function lzenl:f_mc/blocks/clay_mold/cool_down


execute as @a at @s run function lzenl:f_mc/main/onplayer_1sek

execute as @e[type=item_display,tag=rift_item] at @s unless entity @n[type=marker,tag=fd_rift,distance=..21] run kill @s


execute as @e[tag=display,type=text_display] unless function lzenl:f_mc/gameplay/combat/vehicle run kill @s

execute as @e[type=!#not_mob,tag=armor_dmged] at @s if entity @p[distance=..500] run function lzenl:f_mc/gameplay/combat/armor/regenerate

execute as @e[type=block_display,tag=dark_crystal] at @s if entity @p[distance=..500] run function lzenl:f_mc/blocks/dark_crystal/active

function lzenl:f_mc/boss/leviathan/move
