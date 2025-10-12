##
 # leather_warming.mcfunction
 # 
 #
 # Created by .
##

execute store result score .temp .data run execute if items entity @s armor.* #minecraft:armor_warm
scoreboard players operation @s temp += .temp .data
scoreboard players operation @s temp += .temp .data