##
 # root.mcfunction
 # 
 #
 # Created by .
##

execute if entity @s[tag=fundamentals.block.clay_wet] run return run function lzenl:f_mc/blocks/clay_dry
execute if entity @s[tag=fundamentals.block.clay_dry] run return run function lzenl:f_mc/blocks/clay_wet
