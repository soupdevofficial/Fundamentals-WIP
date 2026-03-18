##
 # break_root.mcfunction
 # 
 #
 # Created by .
##
 execute as @s[tag=fundamentals.block.clay_wet,type=interaction] run return run function lzenl:f_mc/blocks/clay_mold_wet/break
 execute as @s[tag=fundamentals.block.clay_dry,type=interaction] run return run function lzenl:f_mc/blocks/clay_mold_dry/break
 execute as @s[tag=fundamentals.block.ceramic,type=interaction] run return run function lzenl:f_mc/blocks/clay_mold/break