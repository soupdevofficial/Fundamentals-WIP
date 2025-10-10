##
 # recall_compass.mcfunction
 # 
 #
 # Created by .
##


data modify storage temp data.compass.recovery.dim set from entity @s LastDeathLocation.dimension
data modify storage temp data.compass.recovery.x set from entity @s LastDeathLocation.pos[0]
data modify storage temp data.compass.recovery.y set from entity @s LastDeathLocation.pos[1]
data modify storage temp data.compass.recovery.z set from entity @s LastDeathLocation.pos[2]


function lzenl:f_mc/used_items/recovery_compass/teleport with storage temp data.compass.recovery
data remove storage temp data.compass

