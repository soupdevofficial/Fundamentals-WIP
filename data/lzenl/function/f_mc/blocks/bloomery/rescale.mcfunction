##
 # rescale.mcfunction
 # 
 #
 # Created by .
##

data modify entity @s[type=shulker] attributes[{id:"minecraft:scale"}].base set value 1

tag @s remove scale


execute as @s[type=shulker] run return fail

data modify entity @s attributes[{id:"minecraft:scale"}].base set value 0.7
data modify entity @s CustomName set value "Bloomery"

team join noCollision @s