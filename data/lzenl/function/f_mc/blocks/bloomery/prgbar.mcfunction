##
 # prgbar.mcfunction
 # 
 #
 # Created by .
##



execute if score #smelt_progress .data matches 1.. run item replace block ~ ~-1 ~ container.13 with poisonous_potato[!food,item_name="execute",custom_name="",item_model="orange_stained_glass_pane",consumable={consume_seconds:999,sound:"intentionally_empty",animation:"none"}] 1

execute if score #smelt_progress .data matches 1..9 run item modify block ~ ~-1 ~ container.13 lzenl:set_prgbar_bloomery_1

execute if score #smelt_progress .data matches 10.. run item modify block ~ ~-1 ~ container.13 lzenl:set_prgbar_bloomery_2

execute if score #smelt_progress .data matches 100.. run item modify block ~ ~-1 ~ container.13 lzenl:set_prgbar_bloomery_3

execute if score #smelt_progress .data matches 1..50 run return run function lzenl:f_mc/blocks/bloomery/pgrbar/1
function lzenl:f_mc/blocks/bloomery/pgrbar/2