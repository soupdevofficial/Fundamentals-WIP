##
 # root.mcfunction
 # 
 #
 # Created by .
##
execute if score @s dlg_adv matches 0 run return run function lzenl:dialogue/text/1
execute if score @s dlg_adv matches 1 run return run function lzenl:dialogue/text/2
execute if score @s dlg_adv matches 2 run return run function lzenl:dialogue/text/3