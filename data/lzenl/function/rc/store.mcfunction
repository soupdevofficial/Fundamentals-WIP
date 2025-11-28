##
 # store.mcfunction
 # 
 #
 # Created by .
##


data remove storage minecraft:temp data
data remove storage temp data.temp.slotoff
data modify storage temp data.temp.slot0 set from entity @s Inventory[{Slot:0b}]
data modify storage temp data.temp.slot1 set from entity @s Inventory[{Slot:1b}]
data modify storage temp data.temp.slot2 set from entity @s Inventory[{Slot:2b}]
data modify storage temp data.temp.slot3 set from entity @s Inventory[{Slot:3b}]
data modify storage temp data.temp.slot4 set from entity @s Inventory[{Slot:4b}]
data modify storage temp data.temp.slot5 set from entity @s Inventory[{Slot:5b}]
data modify storage temp data.temp.slot6 set from entity @s Inventory[{Slot:6b}]
data modify storage temp data.temp.slot7 set from entity @s Inventory[{Slot:7b}]
data modify storage temp data.temp.slot8 set from entity @s Inventory[{Slot:8b}]
execute if data entity @s equipment.offhand run data modify storage temp data.temp.slotoff set from entity @s equipment.offhand
$data modify storage temp data."$(UUID)" set from storage minecraft:temp data.temp
tag @s add check
data remove storage minecraft:temp data.temp
schedule function lzenl:f_mc/delayed_conditional 1t replace