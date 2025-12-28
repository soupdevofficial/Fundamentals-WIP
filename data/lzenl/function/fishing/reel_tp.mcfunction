##
 # reel_tp.mcfunction
 # 
 #
 # Created by .
##

execute as @s[tag=!fish.reeling] run return fail

execute at @s as @e[tag=fishing.reel,type=interaction,distance=..4] if score @s .id = @p[distance=0] .id run function lzenl:fishing/reel_mech


tag @s add user
execute at @s as @e[tag=caught,tag=fishing,type=armor_stand,distance=..40] if score @s .id = @p[distance=0] .id at @s on vehicle run tp @s ^ ^ ^-0.2 facing entity @p[tag=user,distance=..50]
tag @s remove user

execute as @s[tag=fish.reeling] run advancement revoke @s only lzenl:f_mc/fishing.loop