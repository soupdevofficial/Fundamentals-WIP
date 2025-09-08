##
 # onplayer_1sek.mcfunction
 # 
 #
 # Created by .
##

function lzenl:f_mc/gameplay/player/temp/temp_set
execute if entity @n[tag=fd_rift,type=marker,distance=..20] run function lzenl:f_mc/gameplay/rift/effects
execute if score @s .id matches 1.. run function lzenl:f_mc/gameplay/player/check_temp_boss_init
