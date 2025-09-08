##
 # check.mcfunction
 # 
 #
 # Created by .
##

playsound entity.leash_knot.place player @a ~ ~ ~ 3 0
scoreboard players set #temp .data 0
execute store result score #temp .data as @n[distance=..3,tag=!lasso,type=!#not_mob,type=!player,nbt={HurtTime:10s}] unless data entity @s leash run data modify entity @s leash set from entity @n[type=item,distance=..3,tag=lasso] Item.components."minecraft:custom_data".owner
execute if score #temp .data matches 0 run return fail

kill @s
