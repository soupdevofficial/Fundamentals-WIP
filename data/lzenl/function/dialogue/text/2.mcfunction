##
 # test.mcfunction
 # 
 #
 # Created by .
##

scoreboard players add @s dlg_next 1
execute if score @s dlg_next matches 1 run data merge storage f_mc:story {data:{text:{hold:"But when he passed",speed:1}}}
execute if score @s dlg_next matches 2 run data merge storage f_mc:story {data:{text:{hold:",",speed:2}}}
execute if score @s dlg_next matches 3 run data merge storage f_mc:story {data:{text:{hold:" a dark presence",speed:1}}}
execute if score @s dlg_next matches 4 run data merge storage f_mc:story {data:{text:{hold:"\nsought out to collect them all:",speed:1}}}
execute if score @s dlg_next matches 5 run data merge storage f_mc:story {data:{text:{hold:"\nLord Garmadon.",speed:3}}}
execute if score @s dlg_next matches 6 run return run function lzenl:dialogue/technical/advance
advancement revoke @s only lzenl:f_mc/check/dialogue

