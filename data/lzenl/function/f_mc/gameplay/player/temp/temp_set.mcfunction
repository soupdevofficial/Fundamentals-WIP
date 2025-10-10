##
 # temp_set.mcfunction
 # 
 #
 # Created by .
##

scoreboard players set #temp .data 0
execute store result storage temp id int 1 run scoreboard players get @s .id
execute at @s if entity @n[type=marker,tag=fd_rift,distance=8..13] run return run function lzenl:f_mc/gameplay/player/temp/stable with storage temp

execute at @s if entity @n[type=marker,tag=fd_rift,distance=..8] run return run function lzenl:f_mc/gameplay/player/temp/unstable with storage temp

execute positioned 0.0 0.0 0.0 at @s[distance=..5000] if predicate lzenl:the_end run return run function lzenl:f_mc/gameplay/player/temp/stable with storage temp
execute positioned 0.0 0.0 0.0 at @s[distance=5000..] if predicate lzenl:the_end run return run function lzenl:f_mc/gameplay/player/temp/unstable with storage temp

execute if biome ~ ~ ~ #spawns_cold_variant_farm_animals run scoreboard players set #temp .data 1
execute if biome ~ ~ ~ #spawns_warm_variant_farm_animals run scoreboard players set #temp .data 2
execute if biome ~ ~ ~ #is_cave run scoreboard players set #temp .data 0









execute store result score #time .data run time query day


execute if block ~ ~ ~ #fire if score @s temp matches ..1100 run scoreboard players add @s temp 10
execute if block ~ ~ ~ lava if score @s temp matches ..1200 run scoreboard players add @s temp 50
execute if block ~ ~ ~ powder_snow if score @s temp matches -10.. run scoreboard players remove @s temp 5

execute if score @s temp >= #season_min temp if score #time .data matches 0 run scoreboard players remove @s temp 1
execute if score @s temp <= #season_max temp if score #time .data matches 1.. run scoreboard players add @s temp 1



execute positioned over motion_blocking if entity @s[dy=999] if predicate lzenl:rain run scoreboard players remove @s temp 4
execute if block ~ ~ ~ water run function lzenl:f_mc/gameplay/player/temp/block/water


execute if score #temp .data matches 0 run function lzenl:f_mc/biome/neutral

execute if score #temp .data matches 1 run function lzenl:f_mc/biome/cold

execute if score #temp .data matches 2 run function lzenl:f_mc/biome/hot


execute unless score @s temp matches 49.. unless block ~ ~ ~ water unless block ~ ~1 ~ water run function lzenl:f_mc/gameplay/player/temp/leather_warming


execute if score @s temp matches 46.. run function lzenl:f_mc/gameplay/player/temp/temp_isburning with storage temp
execute if score @s temp matches 29..45 run function lzenl:f_mc/gameplay/player/temp/temp_ishot with storage temp
execute if score @s temp matches 21..28 run function lzenl:f_mc/gameplay/player/temp/temp_iswarm with storage temp
execute if score @s temp matches 6..20 run function lzenl:f_mc/gameplay/player/temp/temp_isneutral with storage temp
execute if score @s temp matches 0..5 run function lzenl:f_mc/gameplay/player/temp/temp_iscold with storage temp
execute if score @s temp matches ..-1 run function lzenl:f_mc/gameplay/player/temp/temp_isfreezing with storage temp
