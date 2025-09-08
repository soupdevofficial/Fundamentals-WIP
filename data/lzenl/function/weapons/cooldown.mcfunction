##
 # cooldown.mcfunction
 # 
 #
 # Created by .
##

scoreboard players remove @s weapon.cooldown 1

execute if score @s weapon.cooldown matches 1.. run return run advancement revoke @s only lzenl:weapon/tap_cooldown
scoreboard players reset @s weapon.cooldown
