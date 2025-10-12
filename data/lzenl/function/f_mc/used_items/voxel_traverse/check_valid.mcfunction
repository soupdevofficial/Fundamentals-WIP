##
 # check_valid.mcfunction
 # 
 #
 # Created by .
##
execute if score #used_type .data matches 2 align xyz if entity @e[dx=0,dy=-1,dz=0] run return run function lzenl:f_mc/used_items/return
execute align xyz positioned ~0.5 ~0.5 ~0.5 run function lzenl:f_mc/used_items/use
