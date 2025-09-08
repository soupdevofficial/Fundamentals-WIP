##
 # test.mcfunction
 # 
 #
 # Created by .
##


execute store result score test temp run data get storage temp data.test
execute store result storage temp data.test int 1 run scoreboard players remove test temp 1



$execute store result storage temp data.test2 int 0.275 run random value 2..$(test)


execute store result score test2 temp run data get storage temp data.test2
execute store result score test3 temp run data get storage temp data.test2

scoreboard players reset test4 temp
function lzenl:f_mc/generation/feature/end/rift/2_side1

scoreboard players reset test4 temp
function lzenl:f_mc/generation/feature/end/rift/3_side2

execute if entity @s[distance=..25] positioned ^ ^ ^-1 run function lzenl:f_mc/generation/feature/end/rift/1_lenght with storage temp data