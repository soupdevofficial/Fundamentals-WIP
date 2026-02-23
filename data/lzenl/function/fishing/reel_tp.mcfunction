execute as @s[tag=!fish.reeling] run return fail










execute at @s as @e[tag=fundamentals.fishing.reel,type=interaction,distance=..4] if score @s .id = @p[distance=0] .id run function lzenl:fishing/reel_mech

execute at @s as @e[tag=caught,tag=fishing,type=armor_stand,distance=..40] if score @s .id = @p[distance=0] .id at @s on vehicle at @s run function lzenl:fishing/x_move






execute at @s as @e[tag=caught,tag=fishing,type=armor_stand,distance=..50] if score @s .id = @p[distance=0] .id at @s run tag @s add fishing.facing

execute at @s anchored eyes facing entity @n[tag=fishing.facing,tag=caught,type=armor_stand,distance=..50] eyes positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^20 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run function lzenl:fishing/armorstand/reeling_tp


execute as @s[tag=fish.reeling] run advancement revoke @s only lzenl:f_mc/fishing.loop