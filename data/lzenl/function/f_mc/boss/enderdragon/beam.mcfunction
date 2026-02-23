##
 # beam.mcfunction
 # 
 #
 # Created by .
##

particle witch ~ ~ ~ 0.25 0.25 0.25 0.1 2 force @a

execute as @e[distance=..2,tag=!fundamentals.boss.dragon,type=!#not_mob] at @s run damage @s 2.5 dragon_breath by @n[distance=..200,tag=fundamentals.boss.dragon_hp,type=slime] from @n[distance=..200,tag=fundamentals.boss.dragon_hp,type=slime]

execute positioned ^ ^ ^-0.5 align xyz unless block ~ ~ ~ #dragon_transparent unless block ~ ~ ~ #dragon_immune unless block ~ ~ ~ #air run fill ^-1 ^1 ^-1 ^1 ^-1 ^1 air replace #mineable/pickaxe
execute positioned ^ ^ ^0.5 align xyz unless block ~ ~ ~ #dragon_transparent unless block ~ ~ ~ #dragon_immune unless block ~ ~ ~ #air run fill ^-1 ^1 ^-1 ^1 ^-1 ^1 air replace #mineable/pickaxe

execute positioned ^ ^ ^0.5 align xyz unless block ~ ~ ~ #dragon_transparent unless block ~ ~ ~ #dragon_immune unless block ~ ~ ~ #air run fill ^-1 ^1 ^-1 ^1 ^-1 ^1 air replace #mineable/pickaxe

execute positioned ^ ^ ^0.5 align xyz if block ~ ~ ~ crying_obsidian run return run fill ^-1 ^0.5 ^-1 ^1 ^-0.5 ^1 purple_stained_glass replace crying_obsidian
execute positioned ^ ^ ^0.5 align xyz if block ~ ~ ~ obsidian run return run fill ^-1.5 ^0.5 ^-1 ^1.5 ^-0.5 ^2 crying_obsidian replace obsidian









execute if entity @s[distance=..150] positioned ^ ^ ^0.5 if block ~ ~ ~ #air run return run function lzenl:f_mc/boss/enderdragon/beam

execute if entity @s[distance=..150] positioned ^ ^ ^0.5 unless block ~ ~ ~ #air positioned ~ ~0.5 ~ run function lzenl:f_mc/boss/enderdragon/beam
