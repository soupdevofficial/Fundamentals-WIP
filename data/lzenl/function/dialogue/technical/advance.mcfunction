##
 # advance.mcfunction
 # 
 #
 # Created by .
##


data remove storage f_mc:story data
scoreboard players set @s dlg_next 0
scoreboard players add @s dlg_adv 1
advancement revoke @s only lzenl:f_mc/check/dialogue