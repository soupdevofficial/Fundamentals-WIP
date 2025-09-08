##
 # strip_block.mcfunction
 # 
 #
 # Created by .
##

advancement revoke @s from lzenl:f_mc/used_items/axes
advancement revoke @s from lzenl:f_mc/used_items/stone_pebble

tag @s add used_pebble

execute run schedule function lzenl:f_mc/delayed_conditional 1t

