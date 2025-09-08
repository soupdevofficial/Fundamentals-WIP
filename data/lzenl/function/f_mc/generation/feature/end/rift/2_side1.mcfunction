##
 # test2.mcfunction
 # 
 #
 # Created by .
##

scoreboard players remove test2 temp 1

execute positioned over motion_blocking_no_leaves run function lzenl:f_mc/generation/feature/end/rift/4_fill


execute if score test2 temp matches 1.. positioned ^1 ^ ^ run function lzenl:f_mc/generation/feature/end/rift/2_side1