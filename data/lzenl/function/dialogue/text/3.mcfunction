##
 # test.mcfunction
 # 
 #
 # Created by .
##

scoreboard players add @s dlg_next 1
execute if score @s dlg_next matches 1 run data merge storage f_mc:story {data:{text:{hold:"So I",speed:1}}}
execute if score @s dlg_next matches 2 run data merge storage f_mc:story {data:{text:{hold:",",speed:3}}}
execute if score @s dlg_next matches 3 run data merge storage f_mc:story {data:{text:{hold:" Sensei Wu",speed:1}}}
execute if score @s dlg_next matches 4 run data merge storage f_mc:story {data:{text:{hold:",",speed:3}}}
execute if score @s dlg_next matches 5 run data merge storage f_mc:story {data:{text:{hold:" his brother",speed:1}}}
execute if score @s dlg_next matches 6 run data merge storage f_mc:story {data:{text:{hold:",",speed:3}}}
execute if score @s dlg_next matches 7 run data merge storage f_mc:story {data:{text:{hold:" sought",speed:1}}}
execute if score @s dlg_next matches 8 run data merge storage f_mc:story {data:{text:{hold:"\nout to find four ninja to collect",speed:1}}}
execute if score @s dlg_next matches 9 run data merge storage f_mc:story {data:{text:{hold:"\nthem first.",speed:1}}}
execute if score @s dlg_next matches 10 run return run function lzenl:dialogue/technical/advance
advancement revoke @s only lzenl:f_mc/check/dialogue
