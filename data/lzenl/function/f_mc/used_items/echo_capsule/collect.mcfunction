##
 # collect.mcfunction
 # 
 #
 # Created by .
##

execute on owner run ride @s dismount




scoreboard players set #count .data 20




function lzenl:f_mc/used_items/echo_capsule/raycast





summon block_display ~ ~ ~ {Tags:["read_entity"]}



ride @s mount @e[distance=..0.1,tag=read_entity,limit=1]


execute on owner run function lzenl:f_mc/used_items/echo_capsule/give_filled with entity @e[distance=..1,tag=read_entity,limit=1]

execute on vehicle run function lzenl:f_mc/used_items/echo_capsule/delete
