##
 # dif.mcfunction
 # 
 #
 # Created by .
##
scoreboard players set @s .id 0
execute if items block ~ ~-1 ~ container.4 raw_gold run return run scoreboard players set #duration .data 600
scoreboard players set @s .id 1
execute if items block ~ ~-1 ~ container.4 raw_copper run return run scoreboard players set #duration .data 1200
scoreboard players set @s .id 2
execute if items block ~ ~-1 ~ container.4 raw_iron run return run scoreboard players set #duration .data 2400