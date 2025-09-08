##
 # rift.mcfunction
 # 
 #
 # Created by .
##
summon marker ~ ~ ~ {NoGravity:1b,Silent:1b,Tags:["fd_rift"]}



execute store result score #temp temp run random value 0..1

execute if score #temp temp matches 1 run rotate @n[type=marker,tag=fd_rift,distance=..1] 90 ~

execute as @n[tag=fd_rift] at @s positioned ^ ^ ^1 run function lzenl:f_mc/generation/feature/end/rift/rift
execute as @n[tag=fd_rift] at @s positioned ^ ^ ^-1 run function lzenl:f_mc/generation/feature/end/rift/rift




