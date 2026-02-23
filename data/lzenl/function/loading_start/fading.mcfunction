execute as @e[type=text_display,tag=logo_fade,distance=..5,limit=1] run data merge entity @s {background:0}

gamemode spectator @s

spectate @n[tag=logo_viewer,type=block_display,distance=..3]
tag @s remove fade