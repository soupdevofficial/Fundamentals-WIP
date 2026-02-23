##
 # level.mcfunction
 # 
 #
 # Created by .
##
execute rotated ~ 0 positioned ~ ~-2.65 ~ positioned ^ ^ ^-3 unless blocks ~-2 ~ ~-2 ~2 ~ ~2 ~ 255 ~ masked positioned ^ ^ ^3 positioned ~ ~2.65 ~ run return run tp @e[tag=fundamentals.boss.dragon,type=block_display,distance=..1] ~ ~1 ~
execute rotated ~ 0 positioned ~ ~-3.65 ~ positioned ^ ^ ^-3 if blocks ~-2 ~ ~-2 ~2 ~ ~2 ~ 255 ~ masked positioned ^ ^ ^3 positioned ~ ~3.65 ~ run return run tp @e[tag=fundamentals.boss.dragon,type=block_display,distance=..1] ~ ~-1 ~
