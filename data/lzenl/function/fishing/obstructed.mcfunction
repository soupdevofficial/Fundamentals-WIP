##
 # obsturcted.mcfunction
 # 
 #
 # Created by .
##
execute as @s[tag=!caught] at @a[distance=..12] if score @s .id = @p[distance=0] .id as @p[distance=0] run tellraw @s "You cannot fish here, there are players nearby"

execute on passengers run kill @s
kill @s