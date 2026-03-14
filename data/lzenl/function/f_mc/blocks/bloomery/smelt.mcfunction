##
 # smelt.mcfunction
 # 
 #
 # Created by .
##



execute store result score #world.global.time .data run time query gametime



execute unless items block ~ ~-1 ~ container.4 #raw_ores run return run tag @s add fundamentals.data.was_inactive
execute unless items block ~ ~-1 ~ container.22 #coals run return run tag @s add fundamentals.data.was_inactive

#sets .id to 0 and sets @s active to current time
execute as @s[tag=fundamentals.data.was_inactive] run function lzenl:f_mc/blocks/bloomery/reset_bloomery

#set  duration depending on raw ore
function lzenl:f_mc/blocks/bloomery/dif

# smelts completed = (current time - start time) / duration
scoreboard players operation #smelts_completed .data = #world.global.time .data
scoreboard players operation #smelts_completed .data -= @s active
scoreboard players operation #smelts_completed .data /= #duration .data

execute unless score #smelts_completed .data matches 1.. run return fail

#for every #smelts completed set 1 item into the result area




tellraw @a {score:{name:"#smelts_completed","objective":".data"}}

scoreboard players operation #start_time_adv .data = #smelts_completed .data
scoreboard players operation #start_time_adv .data *= #duration .data
scoreboard players operation @s active += #start_time_adv .data