##
 # raycast.mcfunction
 # 
 #
 # Created by .
##


execute positioned ^ ^ ^0.2 unless block ~ ~ ~ #replaceable positioned ^ ^ ^-0.3 run return run function lzenl:f_mc/used_items/firestarter/place
execute unless entity @s[distance=..6] if block ~ ~ ~ #replaceable run return fail
execute positioned ^ ^ ^0.2 if block ~ ~ ~ #replaceable run function lzenl:f_mc/used_items/firestarter/raycast
