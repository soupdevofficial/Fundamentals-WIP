##
 # recipes.mcfunction
 # 
 #
 # Created by .
##



scoreboard players add @s .data 1
execute if score @s .data matches 3.. run scoreboard players set @s .data 0