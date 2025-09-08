##
 # 1.mcfunction
 # 
 #
 # Created by .
##

execute unless entity @s[level=5..] run return fail



advancement grant @s[advancements={lzenl:game/heroes/aurora_2=false}] until lzenl:game/heroes/aurora_2

attribute @s max_health base set 10

experience add @s -5 levels

return 1