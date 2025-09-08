##
 # check_up.mcfunction
 # 
 #
 # Created by .
##
execute if score @s aurora matches 3 run return fail
execute if score @s aurora matches 5 run return fail
execute if score @s aurora matches 7 run return fail
execute if score @s aurora matches 9 run return fail
execute if score @s aurora matches 11 run return fail
execute if score @s aurora matches 13.. run return fail

return 1