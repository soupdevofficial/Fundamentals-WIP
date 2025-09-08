##
 # show.mcfunction
 # 
 #
 # Created by .
##

execute if score #season .data matches 1 run tellraw @s {"text":"current season: -{ spring }-"}

execute if score #season .data matches 2 run tellraw @s {"text":"current season: -{ summer }-"}

execute if score #season .data matches 3 run tellraw @s {"text":"current season: -{ fall }-"}

execute if score #season .data matches 4 run tellraw @s {"text":"current season: -{ winter }-"}



