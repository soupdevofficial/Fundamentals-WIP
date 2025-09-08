##
 # pick.mcfunction
 # 
 #
 # Created by .
##
advancement revoke @s only lzenl:f_mc/used_items/tweezers

execute positioned ^ ^ ^1.5 positioned ~ ~1.5 ~ as @n[type=armor_stand,tag=clay_bucket,distance=..1] if block ~ ~ ~ #replaceable run function lzenl:f_mc/used_items/tweezers/picked
execute positioned ^ ^ ^1.5 positioned ~ ~1.5 ~ run particle crit

