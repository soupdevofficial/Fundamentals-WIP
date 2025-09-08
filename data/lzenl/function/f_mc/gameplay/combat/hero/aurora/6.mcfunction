##
 # 2.mcfunction
 # 
 #
 # Created by .
##
execute unless entity @s[level=30..] run return fail

advancement grant @s[advancements={lzenl:game/heroes/aurora_7=false}] until lzenl:game/heroes/aurora_7
return 1