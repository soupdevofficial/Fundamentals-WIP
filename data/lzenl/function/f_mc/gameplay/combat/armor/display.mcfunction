##
 # display.mcfunction
 # 
 #
 # Created by .
##


scoreboard players remove #armor_max .data 1
scoreboard players remove #armor_display .data 1

execute as @s[tag=!boss] if score #armor_display .data matches 1.. run data modify storage f_mc:combat data.display.bar append value {"text":"'","color":"white"}
execute as @s[tag=!boss] unless score #armor_display .data matches 1.. run data modify storage f_mc:combat data.display.bar append value {"text":"'","color":"gray"}

execute as @s[tag=boss] if score #armor_display .data matches 1.. run data modify storage f_mc:combat data.display.bar append value {"text":"|","color":"white"}
execute as @s[tag=boss] unless score #armor_display .data matches 1.. run data modify storage f_mc:combat data.display.bar append value {"text":"|","color":"gray"}

execute if score #armor_max .data matches 1.. run function lzenl:f_mc/gameplay/combat/armor/display


