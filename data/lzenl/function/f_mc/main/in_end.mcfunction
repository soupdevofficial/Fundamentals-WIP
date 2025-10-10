##
 # in_end.mcfunction
 # 
 #
 # Created by .
##

execute as @n[type=minecraft:ender_dragon,distance=..1000,tag=!Hp] run function lzenl:f_mc/boss/enderdragon/start
execute as @e[type=armor_stand,tag=dragon_tp,distance=..1000] at @s run function lzenl:f_mc/boss/enderdragon/spawn_move
execute as @e[type=block_display,tag=dragon_root,scores={animation=1},distance=..1000] at @s run function lzenl:f_mc/boss/enderdragon/roar
execute as @a[distance=..1000] if entity @e[type=block_display,tag=dragon_root,scores={animation=3},distance=..1000] at @s run function lzenl:f_mc/gameplay/camera/shake/start
execute as @e[type=block_display,tag=dragon_root,scores={animation=5},distance=..1000] at @s run function lzenl:f_mc/boss/enderdragon/walk

execute as @e[type=block_display,tag=dragon_root,scores={animation=6},distance=..1000] at @s run function lzenl:f_mc/boss/enderdragon/jump
execute as @e[type=block_display,tag=dragon_root,scores={animation=0},distance=..1000] at @s run function lzenl:f_mc/boss/enderdragon/level

execute as @e[type=block_display,tag=dragon_beam,distance=..1000] at @s run function lzenl:f_mc/boss/enderdragon/beam_start

execute as @e[type=block_display,tag=dragon_root,scores={animation=4},distance=..1000] at @s run function lzenl:f_mc/boss/enderdragon/enlight
execute at @e[type=block_display,tag=dragon_root,distance=..1000] run forceload add ~ ~
