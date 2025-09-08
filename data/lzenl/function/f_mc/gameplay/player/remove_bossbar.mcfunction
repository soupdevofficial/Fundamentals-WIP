##
 # remove_bossbar.mcfunction
 # 
 #
 # Created by .
##

execute unless score .id .data matches 1.. run return fail

execute store result storage temp id int 1 run scoreboard players get .id .data

scoreboard players remove .id .data 1


scoreboard players reset * .id


$bossbar remove temp:$(id)

function lzenl:f_mc/gameplay/player/remove_bossbar with storage temp








