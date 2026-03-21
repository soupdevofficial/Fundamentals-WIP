##
 # onplayer_1sek.mcfunction
 # 
 #
 # Created by .
##
function lzenl:f_mc/generation/check_loc_change
function lzenl:f_mc/gameplay/player/temp/temp_set

execute if entity @n[tag=fd_rift,distance=..20,type=marker] run function lzenl:f_mc/gameplay/rift/effects
execute if score @s .id matches 1.. run function lzenl:f_mc/gameplay/player/check_temp_boss_init
execute if entity @e[tag=fundamentals.boss.dragon,distance=..200] run bossbar set enderdragon:hp players @s
execute unless entity @e[tag=fundamentals.boss.dragon,distance=..200] run bossbar set enderdragon:hp players
execute as @s[tag=ui_open] on vehicle run rotate @s facing ^ ^ ^1




# warn-off target-selector-no-type
execute as @e[distance=..50,tag=!fundamentals.entity.alerted,type=!#minecraft:not_mob,type=!player] at @s if function lzenl:f_mc/gameplay/combat/global_behaviour/has_target run function lzenl:f_mc/gameplay/combat/global_behaviour/alerted

execute as @e[distance=..50,tag=fundamentals.entity.alerted,type=!#minecraft:not_mob,type=!player] at @s unless function lzenl:f_mc/gameplay/combat/global_behaviour/has_target run function lzenl:f_mc/gameplay/combat/global_behaviour/alerted_remove
