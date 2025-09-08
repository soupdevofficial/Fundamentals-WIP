##
 # valid_conv.mcfunction
 # 
 #
 # Created by .
##


data modify storage temp data.check.stripped set value "strip"

execute store result score #return .data run data modify storage temp data.check.stripped set string entity @s Item.id 10 15

data modify storage temp data.item.log set string entity @s Item.id 19 -4

execute if score #return .data matches 0 run function lzenl:f_mc/gameplay/log_conv/place_plank with storage temp data.item

execute if score #return .data matches 0 run return fail


data modify storage temp data.item.log set string entity @s Item.id 10
function lzenl:f_mc/gameplay/log_conv/place with storage temp data.item

kill @s

