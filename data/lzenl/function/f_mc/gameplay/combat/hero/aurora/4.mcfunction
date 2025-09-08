##
 # 2.mcfunction
 # 
 #
 # Created by .
##
execute unless entity @s[level=20..] run return fail


advancement grant @s[advancements={lzenl:game/heroes/aurora_5=false}] until lzenl:game/heroes/aurora_5

return 1