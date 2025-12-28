##
 # check.mcfunction
 # 
 #
 # Created by .
##

execute if function lzenl:fishing/kill run return fail
execute as @s[tag=caught] run return fail

execute if block ~ ~ ~ water if block ~ ~1 ~ water run return run function lzenl:fishing/fish_water

execute if block ~ ~ ~ lava if block ~ ~1 ~ lava if dimension the_nether run function lzenl:fishing/fish_lava