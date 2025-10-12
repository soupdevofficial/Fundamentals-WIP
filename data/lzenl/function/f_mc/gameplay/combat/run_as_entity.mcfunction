##
 # run_as_entity.mcfunction
 # 
 #
 # Created by .
##

execute on attacker if entity @s[tag=delayed_hit] run return run tag @s remove delayed_hit
return fail