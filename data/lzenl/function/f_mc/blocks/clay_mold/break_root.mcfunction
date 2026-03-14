##
 # break_root.mcfunction
 # 
 #
 # Created by .
##
 execute as @s[tag=fundamentals.block.wet_clay_mold,type=interaction] run return run function lzenl:f_mc/blocks/clay_mold_wet/break
 execute as @s[tag=fundamentals.block.dry_clay_mold,type=interaction] run return run function lzenl:f_mc/blocks/clay_mold_dry/break
 execute as @s[tag=fundamentals.block.clay_mold,type=interaction] run return run function lzenl:f_mc/blocks/clay_mold/break