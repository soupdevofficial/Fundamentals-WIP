##
 # kill.mcfunction
 # 
 #
 # Created by .
##


execute on passengers as @s[type=fishing_bobber] run return fail
execute at @a[distance=..50] if score @s .id = @p[distance=0] .id as @p[distance=0] if function lzenl:fishing/tag run function lzenl:fishing/collect
return run kill @s