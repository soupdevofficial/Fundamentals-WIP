##
 # check_activate.mcfunction
 # 
 #
 # Created by .
##

execute unless block ~ ~ ~ dropper run function lzenl:f_mc/blocks/swopper/break

execute if block ~ ~ ~ dropper[triggered=false] store result score @s active run return fail




execute if score @s active matches 1 run return fail
scoreboard players set @s active 1

rotate @s ~180 0
execute rotated as @s on passengers run rotate @s ~180 0



execute if block ~ ~ ~ dropper[facing=south] run return run setblock ~ ~ ~ dropper[facing=north,triggered=true]

execute if block ~ ~ ~ dropper[facing=north] run return run setblock ~ ~ ~ dropper[facing=south,triggered=true]

execute if block ~ ~ ~ dropper[facing=east] run return run setblock ~ ~ ~ dropper[facing=west,triggered=true]

execute if block ~ ~ ~ dropper[facing=west] run return run setblock ~ ~ ~ dropper[facing=east,triggered=true]
