##
 # delete.mcfunction
 # 
 #
 # Created by .
##
tp @s ~ -100 ~


execute store result score #return .data run gamerule show_death_messages



gamerule show_death_messages false

execute on passengers run kill @s
kill @s

execute if score #return .data matches 1 run gamerule show_death_messages true