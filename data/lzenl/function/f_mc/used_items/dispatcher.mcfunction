##
 # dispatcher.mcfunction
 # 
 #
 # Created by .
##


execute if entity @s[advancements={lzenl:f_mc/used_items/root={used_root=true}}] run function lzenl:f_mc/used_items/root



execute if score #used_type .data matches 2.. if score #used .data matches 1 run function lzenl:f_mc/used_items/used

execute if entity @s[advancements={lzenl:f_mc/used_items/root={used_return=true}}] run function lzenl:rc/return



advancement revoke @s only lzenl:f_mc/used_items/root
