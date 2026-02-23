##
 # walk.mcfunction
 # 
 #
 # Created by .
##





execute as @e[tag=fundamentals.boss.dragon,type=block_display,distance=..1] anchored eyes facing entity @p[distance=6..,tag=target] eyes positioned ^ ^ ^6 rotated as @s positioned ^ ^ ^8 facing entity @s eyes facing ^ ^ ^-1 positioned as @s rotated ~ 0 run rotate @s ~ ~
execute as @e[tag=fundamentals.boss.dragon,type=block_display,distance=..1] on passengers run rotate @s ~90 0




execute rotated ~ 0 positioned ~ ~-2 ~ positioned ^ ^ ^-3 unless blocks ~-2 ~ ~-2 ~2 ~ ~2 ~ 255 ~ masked positioned ^ ^ ^3 positioned ~ ~2 ~ run return run tp @e[tag=fundamentals.boss.dragon,type=block_display,distance=..1] ~ ~1 ~
execute rotated ~ 0 positioned ~ ~-3 ~ positioned ^ ^ ^-3 if blocks ~-2 ~ ~-2 ~2 ~ ~2 ~ 255 ~ masked positioned ^ ^ ^3 positioned ~ ~3 ~ run tp @e[tag=fundamentals.boss.dragon,type=block_display,distance=..1] ^ ^-1 ^1.5

execute as @e[tag=fundamentals.boss.dragon_root,type=block_display,distance=..100,limit=1] at @s positioned ~ ~-1 ~ run tp @e[tag=fundamentals.boss.dragon,type=slime,distance=..300] ^ ^ ^-3





execute if entity @s[tag=stomp] run return run function lzenl:f_mc/boss/enderdragon/roar

execute if entity @s[tag=rotate] run return fail

execute as @e[tag=fundamentals.boss.dragon,type=block_display,distance=..1] at @s run tp @s ^ ^ ^2
