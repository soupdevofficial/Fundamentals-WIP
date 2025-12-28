##
 # run_as_entity.mcfunction
 # 
 #
 # Created by .
##

execute on attacker if entity @s[tag=attacker_prev] run return 1
return fail