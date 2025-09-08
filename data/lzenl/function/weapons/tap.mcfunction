##
 # tap.mcfunction
 # 
 #
 # Created by .
##

execute unless score @s weapon.cooldown matches 1.. run say tap

advancement revoke @s only lzenl:weapon/tap
advancement revoke @s only lzenl:weapon/tap_cooldown

scoreboard players set @s weapon.cooldown 3
