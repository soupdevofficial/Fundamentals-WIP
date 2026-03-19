##
 # smelt.mcfunction
 # 
 #
 # Created by .
##






scoreboard players set #return2 .data 0
#15

execute if items block ~ ~-1 ~ container.4 *[custom_data~{item:{id:6b},id:2}] if items block ~ ~-1 ~ container.15 *[custom_data~{item:{id:6b},id:3},count=64] run return fail

execute if items block ~ ~-1 ~ container.4 *[custom_data~{item:{id:8b},id:1}] if items block ~ ~-1 ~ container.15 *[custom_data~{item:{id:7b},id:1},count=64] run return fail
execute if items block ~ ~-1 ~ container.4 *[custom_data~{item:{id:8b},id:2}] if items block ~ ~-1 ~ container.15 *[custom_data~{item:{id:7b},id:2},count=64] run return fail
execute if items block ~ ~-1 ~ container.4 *[custom_data~{item:{id:8b},id:3}] if items block ~ ~-1 ~ container.15 *[custom_data~{item:{id:7b},id:3},count=64] run return fail
execute if items block ~ ~-1 ~ container.4 *[custom_data~{item:{id:8b},id:4}] if items block ~ ~-1 ~ container.15 *[custom_data~{item:{id:7b},id:4},count=64] run return fail
execute if items block ~ ~-1 ~ container.4 *[custom_data~{item:{id:8b},id:5}] if items block ~ ~-1 ~ container.15 *[custom_data~{item:{id:7b},id:5},count=64] run return fail
execute if items block ~ ~-1 ~ container.4 *[custom_data~{item:{id:8b},id:6}] if items block ~ ~-1 ~ container.15 *[custom_data~{item:{id:7b},id:6},count=64] run return fail
execute if items block ~ ~-1 ~ container.4 *[custom_data~{item:{id:8b},id:7}] if items block ~ ~-1 ~ container.15 *[custom_data~{item:{id:7b},id:7},count=64] run return fail
execute if items block ~ ~-1 ~ container.4 *[custom_data~{item:{id:8b},id:8}] if items block ~ ~-1 ~ container.15 *[custom_data~{item:{id:7b},id:8},count=64] run return fail
execute if items block ~ ~-1 ~ container.4 *[custom_data~{item:{id:8b},id:9}] if items block ~ ~-1 ~ container.15 *[custom_data~{item:{id:7b},id:9},count=64] run return fail
execute if items block ~ ~-1 ~ container.4 *[custom_data~{item:{id:8b},id:10}] if items block ~ ~-1 ~ container.15 *[custom_data~{item:{id:7b},id:10},count=64] run return fail
execute if items block ~ ~-1 ~ container.4 *[custom_data~{item:{id:8b},id:11}] if items block ~ ~-1 ~ container.15 *[custom_data~{item:{id:7b},id:11},count=64] run return fail

execute unless items block ~ ~-1 ~ container.4 *[custom_data~{item:{id:6b}}] unless items block ~ ~-1 ~ container.4 *[custom_data~{item:{id:8b}}] unless items block ~ ~-1 ~ container.4 #raw_ores run return run tag @s add fundamentals.data.was_inactive


execute unless items block ~ ~-1 ~ container.22 #coals run return run tag @s add fundamentals.data.was_inactive

#sets .id to 0 and sets @s active to current time
execute as @s[tag=fundamentals.data.was_inactive] run function lzenl:f_mc/blocks/bloomery/reset_bloomery

#set  duration depending on raw ore
function lzenl:f_mc/blocks/bloomery/dif


# smelts completed = (current time - start time) / duration
scoreboard players operation #smelts_completed .data = #world.global.time .data
scoreboard players operation #smelts_completed .data -= @s active

scoreboard players operation #smelt_progress .data = #smelts_completed .data
scoreboard players operation #smelt_progress .data %= #duration .data
scoreboard players operation #smelt_progress .data *= #100 .data
scoreboard players operation #smelt_progress .data /= #duration .data

scoreboard players set #return2 .data 1
scoreboard players operation #smelts_completed .data /= #duration .data



#show progress 1-100%
# show bar from 1-20
execute if score #smelts_completed .data matches 1.. run scoreboard players set #smelt_progress .data 100
function lzenl:f_mc/blocks/bloomery/prgbar

execute unless score #smelts_completed .data matches 1.. run return fail

#for every #smelts completed set 1 item into the result area

scoreboard players operation #smelt .data = #smelts_completed .data

execute unless items block ~ ~-1 ~ container.4 #raw_ores run function lzenl:f_mc/blocks/bloomery/smelt_clay



scoreboard players operation #start_time_adv .data = #smelts_completed .data
scoreboard players operation #start_time_adv .data *= #duration .data
scoreboard players operation @s active += #start_time_adv .data

