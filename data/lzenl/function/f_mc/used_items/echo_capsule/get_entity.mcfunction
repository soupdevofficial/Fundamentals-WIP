##
 # raycast.mcfunction
 # 
 #
 # Created by .
##
tag @s remove found
execute as @s[tag=!found] as @e[distance=..5,type=!player,sort=nearest] at @s if function lzenl:f_mc/used_items/echo_capsule/matches_owner run return run function lzenl:f_mc/used_items/echo_capsule/collect




