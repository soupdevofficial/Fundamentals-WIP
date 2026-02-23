##
 # is_sleeping.mcfunction
 # 
 #
 # Created by .
##

execute unless score #finality .data matches 1 run return run advancement revoke @s only lzenl:f_mc/check/sleep


advancement revoke @s only lzenl:f_mc/check/sleep

tp ~ ~ ~ 
title @s actionbar {text:"An ominous presence prevents you from resting...",color:"red"}



