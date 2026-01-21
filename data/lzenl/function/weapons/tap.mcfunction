##
 # tap.mcfunction
 # 
 #
 # Created by .
##

execute unless score @s weapon.cooldown matches 1.. run say tap

advancement revoke @s only lzenl:weapon/tap
advancement revoke @s only lzenl:weapon/tap_cooldown
execute if score @s weapon.cooldown matches 1.. run return fail

scoreboard players set @s weapon.cooldown 10