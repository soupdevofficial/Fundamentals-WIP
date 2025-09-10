##
 # 2.mcfunction
 # 
 #
 # Created by .
##
execute unless entity @s[level=20..] run return fail


advancement grant @s[advancements={lzenl:game/heroes/aurora_5=false}] until lzenl:game/heroes/aurora_5
experience add @s -20 levels

return 1