##
 # test.mcfunction
 # 
 #
 # Created by .
##

scoreboard players add @s dlg_next 1
execute if score @s dlg_next matches 1 run data merge storage f_mc:story {data:{text:{hold:"Long before time had a name",speed:1}}}
execute if score @s dlg_next matches 2 run data merge storage f_mc:story {data:{text:{hold:",",speed:4}}}
execute if score @s dlg_next matches 3 run data merge storage f_mc:story {data:{text:{hold:" the First",speed:1}}}
execute if score @s dlg_next matches 4 run data merge storage f_mc:story {data:{text:{hold:"\nSpinjitzu Master created Ninjago using",speed:1}}}
execute if score @s dlg_next matches 5 run data merge storage f_mc:story {data:{text:{hold:"\nfour elemental weapons.",speed:1}}}
execute if score @s dlg_next matches 6 run return run function lzenl:dialogue/technical/advance
advancement revoke @s only lzenl:f_mc/check/dialogue



