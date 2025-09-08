##
 # start.mcfunction
 # 
 #
 # Created by .
##
execute store result score #motion_x temp run data get entity @s Pos[0] 1000
execute store result score #motion_y temp run data get entity @s Pos[1] 1000
execute store result score #motion_z temp run data get entity @s Pos[2] 1000

execute rotated as @p run tp @s ^ ^ ^2

execute store result score #motion_x2 temp run data get entity @s Pos[0] 1000
execute store result score #motion_y2 temp run data get entity @s Pos[1] 1000
execute store result score #motion_z2 temp run data get entity @s Pos[2] 1000

tp @s ~ ~ ~

execute store result entity @s Motion[0] double 0.00125 run scoreboard players operation #motion_x2 temp -= #motion_x temp
execute store result entity @s Motion[1] double 0.00125 run scoreboard players operation #motion_y2 temp -= #motion_y temp
execute store result entity @s Motion[2] double 0.00125 run scoreboard players operation #motion_z2 temp -= #motion_z temp

scoreboard players reset #motion_x temp
scoreboard players reset #motion_y temp
scoreboard players reset #motion_z temp
scoreboard players reset #motion_x2 temp
scoreboard players reset #motion_y2 temp
scoreboard players reset #motion_z2 temp


tag @s remove motion



execute on passengers as @s[tag=lasso] run tag @s add check
