##
 # count.mcfunction
 # 
 #
 # Created by .
##



#### compatability with other datapack functions
execute if score Season _seasons matches 0 run function lzenl:f_mc/season/summer
execute if score Season _seasons matches 1 run function lzenl:f_mc/season/fall
execute if score Season _seasons matches 2 run function lzenl:f_mc/season/winter
execute if score Season _seasons matches 3 run function lzenl:f_mc/season/spring

execute if score Season _seasons matches 0..3 run return fail
####




scoreboard players add #time_day .data 1

execute unless score #time_day .data matches 7 run return fail

scoreboard players set #time_day .data 1

scoreboard players add #season .data 1

execute if score #season .data matches 1 run function lzenl:f_mc/season/spring
execute if score #season .data matches 2 run function lzenl:f_mc/season/summer
execute if score #season .data matches 3 run function lzenl:f_mc/season/fall
execute if score #season .data matches 4 run function lzenl:f_mc/season/winter

execute unless score #season .data matches 5.. run return fail

scoreboard players set #season .data 1
