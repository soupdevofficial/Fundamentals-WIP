##
 # set_data.mcfunction
 # 
 #
 # Created by .
##
data merge entity @s {Silent:1b,width:0.51f,height:0.51f,response:1b,Tags:["fundamentals.block.clay_bucket","fundamentals.block.clay_root"]}


execute if score #return .data matches 1 run return run function lzenl:f_mc/blocks/clay_bucket/p_wet
execute if score #return .data matches 2 run return run function lzenl:f_mc/blocks/clay_bucket/p_dry
execute if score #return .data matches 3 run return run function lzenl:f_mc/blocks/clay_bucket/p_cer
execute if score #return .data matches 4 run return run function lzenl:f_mc/blocks/clay_bucket/p_fil
execute if score #return .data matches 5 run return run function lzenl:f_mc/blocks/clay_bucket/p_ful
execute if score #return .data matches 6 run return run function lzenl:f_mc/blocks/clay_bucket/p_gld
execute if score #return .data matches 7 run return run function lzenl:f_mc/blocks/clay_bucket/p_cpr
execute if score #return .data matches 8 run return run function lzenl:f_mc/blocks/clay_bucket/p_irn