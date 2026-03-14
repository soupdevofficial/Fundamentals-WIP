##
 # break.mcfunction
 # 
 #
 # Created by .
##

setblock ~ ~ ~ air strict
function lzenl:f_mc/blocks/clay_bucket/r_root

execute as @e[type=item,distance=..1] if items entity @s contents player_head run kill @s
kill @s