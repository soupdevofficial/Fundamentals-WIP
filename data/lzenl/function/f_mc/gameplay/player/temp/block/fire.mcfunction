##
 # fire.mcfunction
 # 
 #
 # Created by .
##
advancement revoke @s only lzenl:f_mc/check/hot

execute if score @s temp matches 100.. run return fail

scoreboard players add @s temp 10