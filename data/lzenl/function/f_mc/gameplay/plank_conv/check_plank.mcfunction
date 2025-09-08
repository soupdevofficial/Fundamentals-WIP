##
 # check_plank.mcfunction
 # 
 #
 # Created by .
##
execute unless items entity @s container.* #planks run return fail

return 1