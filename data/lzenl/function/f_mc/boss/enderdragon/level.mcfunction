##
 # level.mcfunction
 # 
 #
 # Created by .
##
execute rotated ~ 0 positioned ~ ~-3 ~ positioned ^ ^ ^-3 unless blocks ~-2 ~ ~-2 ~2 ~ ~2 ~ 255 ~ masked positioned ^ ^ ^3 positioned ~ ~3 ~ run return run tp @e[tag=dragon,type=block_display,distance=..1] ~ ~1 ~
execute rotated ~ 0 positioned ~ ~-4 ~ positioned ^ ^ ^-3 if blocks ~-2 ~ ~-2 ~2 ~ ~2 ~ 255 ~ masked positioned ^ ^ ^3 positioned ~ ~4 ~ run return run tp @e[tag=dragon,type=block_display,distance=..1] ~ ~-1 ~
