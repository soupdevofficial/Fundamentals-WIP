##
 # beam_start.mcfunction
 # 
 #
 # Created by .
##


scoreboard players remove @s animation 1

execute at @s if score @s animation matches -10.. run rotate @s ~0.8 ~0.1

execute at @s if score @s animation matches -20.. run rotate @s ~2.2 ~0.1
execute at @s if score @s animation matches -40..-21 run rotate @s ~-2.2 ~0.2
execute at @s if score @s animation matches -60..-41 run rotate @s ~-4.2 ~0.1

execute if score @s animation matches -60.. run playsound entity.warden.death hostile @a[distance=..250] ~ ~ ~ 5 2
execute at @s if score @s animation matches -50..-4 positioned ~ ~-1 ~ positioned ^ ^ ^7 run function lzenl:f_mc/boss/enderdragon/beam


execute at @s if score @s animation matches -45..-40 positioned ~ ~-1 ~ positioned ^-2 ^ ^7 run function lzenl:f_mc/boss/enderdragon/beam
execute at @s if score @s animation matches -50..-45 positioned ~ ~-1 ~ positioned ^-2.5 ^ ^7 run function lzenl:f_mc/boss/enderdragon/beam
execute at @s if score @s animation matches -54..-50 positioned ~ ~-1 ~ positioned ^-3 ^ ^7 run function lzenl:f_mc/boss/enderdragon/beam
execute at @s if score @s animation matches -58..-54 positioned ~ ~-0.75 ~ positioned ^-3.5 ^ ^6.5 run function lzenl:f_mc/boss/enderdragon/beam
execute at @s if score @s animation matches -60..-58 positioned ~ ~-0.5 ~ positioned ^-4 ^ ^6 run function lzenl:f_mc/boss/enderdragon/beam















