# COORDINATES

teleport @s ^ ^ ^

execute store result score x .data run data get entity @s Pos[0] 1024
execute store result score y .data run data get entity @s Pos[1] 1024
execute store result score z .data run data get entity @s Pos[2] 1024

teleport @s ^ ^ ^1

execute store result score x_ray .data run data get entity @s Pos[0] 1024
execute store result score y_ray .data run data get entity @s Pos[1] 1024
execute store result score z_ray .data run data get entity @s Pos[2] 1024

teleport @s ~ ~ ~

# DELTA

scoreboard players operation x_ray .data -= x .data
scoreboard players operation y_ray .data -= y .data
scoreboard players operation z_ray .data -= z .data

# SIGN

scoreboard players set x_sign .data -1
scoreboard players set y_sign .data -1
scoreboard players set z_sign .data -1

execute if score x_ray .data matches 0.. run scoreboard players set x_sign .data 1
execute if score y_ray .data matches 0.. run scoreboard players set y_sign .data 1
execute if score z_ray .data matches 0.. run scoreboard players set z_sign .data 1

# DELTA

scoreboard players operation x_temp .data = x_ray .data
scoreboard players operation y_temp .data = y_ray .data
scoreboard players operation z_temp .data = z_ray .data

scoreboard players operation x_temp .data *= x_sign .data
scoreboard players operation y_temp .data *= y_sign .data
scoreboard players operation z_temp .data *= z_sign .data

scoreboard players operation x_delta .data = #vt_scale2 .data
scoreboard players operation y_delta .data = #vt_scale2 .data
scoreboard players operation z_delta .data = #vt_scale2 .data

scoreboard players operation x_delta .data /= x_temp .data
scoreboard players operation y_delta .data /= y_temp .data
scoreboard players operation z_delta .data /= z_temp .data

# MAX

scoreboard players operation x_max .data = x .data
scoreboard players operation y_max .data = y .data
scoreboard players operation z_max .data = z .data

scoreboard players operation x_max .data %= #vt_scale .data
scoreboard players operation y_max .data %= #vt_scale .data
scoreboard players operation z_max .data %= #vt_scale .data

execute if score x_sign .data matches 1.. run scoreboard players operation x_max .data -= #vt_scale .data
execute if score y_sign .data matches 1.. run scoreboard players operation y_max .data -= #vt_scale .data
execute if score z_sign .data matches 1.. run scoreboard players operation z_max .data -= #vt_scale .data

scoreboard players operation x_max .data *= x_delta .data
scoreboard players operation y_max .data *= y_delta .data
scoreboard players operation z_max .data *= z_delta .data

scoreboard players operation x_max .data /= #vt_scale .data
scoreboard players operation y_max .data /= #vt_scale .data
scoreboard players operation z_max .data /= #vt_scale .data

execute if score x_max .data matches ..-1 run scoreboard players operation x_max .data *= #vt_-1 .data
execute if score y_max .data matches ..-1 run scoreboard players operation y_max .data *= #vt_-1 .data
execute if score z_max .data matches ..-1 run scoreboard players operation z_max .data *= #vt_-1 .data

execute if score x_ray .data matches 0 run scoreboard players set x_max .data 2147483647
execute if score y_ray .data matches 0 run scoreboard players set y_max .data 2147483647
execute if score z_ray .data matches 0 run scoreboard players set z_max .data 2147483647





execute at @s anchored eyes positioned ^ ^ ^ align xyz positioned ~0.5 ~0.5 ~0.5 run function lzenl:f_mc/used_items/voxel_traverse/move