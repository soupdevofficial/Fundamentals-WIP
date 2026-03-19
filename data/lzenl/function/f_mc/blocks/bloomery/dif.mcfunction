##
 # dif.mcfunction
 # 
 #
 # Created by .
##


#speed


# clay bucket (3 clay balls)
scoreboard players set @s .id -2
execute if items block ~ ~-1 ~ container.4 *[custom_data~{item:{id:6b}}] run return run scoreboard players set #duration .data 200

# clay mold (2 clay balls)
scoreboard players set @s .id -1
execute if items block ~ ~-1 ~ container.4 *[custom_data~{item:{id:8b}}] run return run scoreboard players set #duration .data 100

# metals
scoreboard players set @s .id 0
execute if items block ~ ~-1 ~ container.4 raw_gold run return run scoreboard players set #duration .data 400

scoreboard players set @s .id 1
execute if items block ~ ~-1 ~ container.4 raw_copper run return run scoreboard players set #duration .data 700

scoreboard players set @s .id 2
execute if items block ~ ~-1 ~ container.4 raw_iron run return run scoreboard players set #duration .data 2400