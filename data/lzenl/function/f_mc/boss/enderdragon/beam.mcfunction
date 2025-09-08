##
 # beam.mcfunction
 # 
 #
 # Created by .
##

rotate @s ~ ~


execute unless block ~ ~ ~ #air run particle block_marker{block_state:"crying_obsidian"} ~ ~ ~ 0.2 0.2 0.2 0.0001 3 force @a


particle dust_color_transition{from_color:10748019,to_color:15553781,scale:4} ~ ~ ~ 0 0 0 10 0 force @a

damage @n[distance=..2] 5 dragon_breath by @s from @s

execute if entity @s[distance=..100] positioned ^ ^ ^0.5 run function lzenl:f_mc/boss/enderdragon/beam

execute if entity @s[distance=..0] run playsound block.beacon.activate hostile @a ~ ~ ~ 10 2