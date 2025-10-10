##
 # matches_owner.mcfunction
 # 
 #
 # Created by .
##
execute on owner if entity @s[tag=owner] run return run tag @s add found
return fail