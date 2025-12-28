##
 # chances.mcfunction
 # 
 #
 # Created by .
##

scoreboard players set #fish.chance.trash .data 75
scoreboard players set #fish.chance.food .data 25
scoreboard players set #fish.chance.treasure .data 0

execute at @s if biome ~ ~ ~ #is_ocean run function lzenl:fishing/loot/ocean
execute at @s if biome ~ ~ ~ #is_river run function lzenl:fishing/loot/river

scoreboard players operation #fish.chance.treasure .data += #fish.chance.tbonus .data
scoreboard players operation #fish.chance.food .data += #fish.chance.fbonus .data


execute store result score #random .data run random value 1..100
execute if score #fish.chance.treasure .data >= #random .data run return run function lzenl:fishing/loot/.treasure
execute store result score #random .data run random value 1..100
execute if score #fish.chance.food .data >= #random .data run return run function lzenl:fishing/loot/.food
execute store result score #random .data run random value 1..100
execute if score #fish.chance.trash .data >= #random .data run return run function lzenl:fishing/loot/.trash

function lzenl:fishing/loot/chances

