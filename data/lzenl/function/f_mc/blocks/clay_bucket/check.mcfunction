##
 # check.mcfunction
 # 
 #
 # Created by .
##
execute if block ~ ~ ~ player_head run return fail

stopsound @a[distance=..20] * block.stone.break

function lzenl:f_mc/blocks/clay_bucket/r_root

kill @n[type=item,distance=..1]
kill @s








