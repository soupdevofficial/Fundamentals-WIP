##
 # return_11.mcfunction
 # 
 #
 # Created by .
##


summon item ~ ~ ~ {PickupDelay:3,Tags:["setup"],Item:{id:"minecraft:stone_button",count:1}}

execute as @n[type=item,tag=setup,distance=..0.5] run item replace entity @s contents from entity @n[type=donkey,tag=bloomery_ui] horse.1

tellraw @p {text:"Only 1 [Raw Ore] Item fits in this Slot!",color:red}

item replace entity @s horse.1 with air