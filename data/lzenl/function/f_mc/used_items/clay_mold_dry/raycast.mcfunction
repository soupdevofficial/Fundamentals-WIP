##
 # raycast.mcfunction
 # 
 #
 # Created by .
##



execute positioned ^ ^ ^0.2 unless block ~ ~ ~ #replaceable positioned ^ ^ ^-0.3 run return run function lzenl:f_mc/used_items/clay_mold_dry/place


execute unless entity @s[distance=..3] if block ~ ~ ~ #replaceable run function lzenl:f_mc/used_items/clay_mold_dry/give_back



execute positioned ^ ^ ^0.2 if block ~ ~ ~ #replaceable run function lzenl:f_mc/used_items/clay_mold_dry/raycast
