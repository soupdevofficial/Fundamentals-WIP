##
 # return.mcfunction
 # 
 #
 # Created by .
##

execute if score #used .data matches 1 run return run scoreboard players set #used .data 0
execute if items entity @s weapon.* *[custom_data~{spell:{}}] run function lzenl:scroll_table/spell/start
execute if items entity @s weapon.* *[custom_data~{echo_capsule:{}}] run function lzenl:f_mc/used_items/echo_capsule/start
function lzenl:rc/store with entity @s