##
 # caught.mcfunction
 # 
 #
 # Created by .
##

execute store result score #fish.size .data run random value 5..30
execute store result score #fish.size.adjust .data run random value 5..10
execute unless biome ~ ~ ~ #is_deep_ocean unless biome ~ ~ ~ frozen_ocean if score #fish.size .data matches 15..30 run scoreboard players operation #fish.size .data -= #fish.size.adjust .data

function lzenl:fishing/loot/chances


execute at @s if score #fish.type .data matches 1 run summon item_display ~ ~ ~ {teleport_duration:5,Tags:["fish.move"],item:{id:"minecraft:kelp",count:1}}

#fish.flesh_amount (size/5)

#for cod/salmon/squid
#fish.size [float] lore and string prefix for size
#fish.nutrition (size/5) / saturatuion (size/25)   default is 2 and 0.4 

#for pufferfish
# default is 1 and 0.2 (/10 and /50)

#turned into flesh the amount of nutrition stays but saturation doubles
#saturation doubles again when cooked















