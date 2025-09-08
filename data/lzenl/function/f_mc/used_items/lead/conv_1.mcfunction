##
 # conv_1.mcfunction
 # 
 #
 # Created by .
##
advancement revoke @s only lzenl:f_mc/check/lasso

execute store result storage temp data.givecount int 1 run clear @s lead[!minecraft:consumable]
function lzenl:f_mc/used_items/lead/conv with storage temp data