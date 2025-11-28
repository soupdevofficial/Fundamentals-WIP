##
 # dispatcher.mcfunction
 # 
 #
 # Created by .
##


execute if entity @s[advancements={lzenl:f_mc/used_items/root={used_root=true}}] run function lzenl:f_mc/used_items/root
execute if entity @s[advancements={lzenl:f_mc/used_items/root={used_return=true}}] run function lzenl:rc/return



advancement revoke @s only lzenl:f_mc/used_items/root
