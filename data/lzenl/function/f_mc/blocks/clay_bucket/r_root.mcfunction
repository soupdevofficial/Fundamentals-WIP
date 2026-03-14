##
 # r_root.mcfunction
 # 
 #
 # Created by .
##
execute as @s[tag=fundamentals.block.wet_clay_bucket] run return run function lzenl:f_mc/blocks/clay_bucket/r_wet

execute as @s[tag=fundamentals.block.dry_clay_bucket] run return run function lzenl:f_mc/blocks/clay_bucket/r_dry

execute as @s[tag=fundamentals.block.clay_bucket] run return run function lzenl:f_mc/blocks/clay_bucket/r_ceramic