##
 # move.mcfunction
 # 
 #
 # Created by .
##




execute as @n[type=block_display,tag=leviathan_head] at @s anchored eyes facing entity @p eyes positioned ^ ^ ^3 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^6 ~ ~
execute as @n[type=block_display,tag=leviathan_head] at @s on passengers facing ^ ^ ^-1 run rotate @s ~ ~




execute as @n[type=block_display,tag=leviathan_head] at @s facing entity @n[type=block_display,tag=leviathan_body1] feet positioned ^ ^ ^2 run tp @n[type=block_display,tag=leviathan_body1] ~ ~ ~ facing entity @s feet
execute as @n[type=block_display,tag=leviathan_body1] at @s facing entity @n[type=block_display,tag=leviathan_body2] feet positioned ^ ^ ^2 run tp @n[type=block_display,tag=leviathan_body2] ~ ~ ~ facing entity @s feet
execute as @n[type=block_display,tag=leviathan_body2] at @s facing entity @n[type=block_display,tag=leviathan_body3] feet positioned ^ ^ ^2 run tp @n[type=block_display,tag=leviathan_body3] ~ ~ ~ facing entity @s feet
execute as @n[type=block_display,tag=leviathan_body3] at @s facing entity @n[type=block_display,tag=leviathan_body4] feet positioned ^ ^ ^2 run tp @n[type=block_display,tag=leviathan_body4] ~ ~ ~ facing entity @s feet
execute as @n[type=block_display,tag=leviathan_body4] at @s facing entity @n[type=block_display,tag=leviathan_body5] feet positioned ^ ^ ^2 run tp @n[type=block_display,tag=leviathan_body5] ~ ~ ~ facing entity @s feet
execute as @n[type=block_display,tag=leviathan_body5] at @s facing entity @n[type=block_display,tag=leviathan_body6] feet positioned ^ ^ ^2 run tp @n[type=block_display,tag=leviathan_body6] ~ ~ ~ facing entity @s feet






