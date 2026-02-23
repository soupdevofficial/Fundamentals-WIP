##
 # e_slot_clear.mcfunction
 # 
 #
 # Created by .
##


data modify block ~ ~-1 ~ Items[{Slot:1b}] merge from entity @s item.components.minecraft:custom_data.ench_item

summon item ~ ~ ~ {PickupDelay:1,Item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:item_name":"execute","minecraft:item_model":"air"}}}

execute as @e[type=item,distance=..1,limit=1] if items entity @s contents *[item_name=execute] run item replace entity @s contents from block ~ ~-1 ~ container.1

item replace block ~ ~-1 ~ container.1 with air
data remove entity @s item.components.minecraft:custom_data.ench_item
data remove storage temp data.ench_item





