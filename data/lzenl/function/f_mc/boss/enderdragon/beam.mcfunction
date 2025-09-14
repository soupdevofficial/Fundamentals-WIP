##
 # beam.mcfunction
 # 
 #
 # Created by .
##

particle witch ~ ~ ~ 0.25 0.25 0.25 0.1 2 force @a


execute as @e[distance=..2] at @s run damage @s 5 dragon_breath by @s from @s
execute if block ^ ^ ^0.5 obsidian run particle block_marker{block_state:"crying_obsidian"} ^ ^ ^0.5 0.2 0.5 0.2 0.0001 5 force @a
execute if block ~ ~ ~ obsidian run return run particle witch ~ ~ ~ 1 1 1 1 10

execute if entity @s[distance=..100] positioned ^ ^ ^0.5 run function lzenl:f_mc/boss/enderdragon/beam

