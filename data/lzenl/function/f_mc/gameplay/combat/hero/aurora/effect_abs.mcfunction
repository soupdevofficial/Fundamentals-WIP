##
 # effect_abs.mcfunction
 # 
 #
 # Created by .
##

advancement revoke @s only lzenl:f_mc/check/effect_abs

execute unless entity @s[scores={aurora=14}] run return fail

effect give @s resistance 1 0 true
