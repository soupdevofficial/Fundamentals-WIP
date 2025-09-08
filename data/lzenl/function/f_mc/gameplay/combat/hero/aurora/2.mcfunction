##
 # 2.mcfunction
 # 
 #
 # Created by .
##
execute unless entity @s[level=10..] run return fail


advancement grant @s[advancements={lzenl:game/heroes/aurora_3=false}] until lzenl:game/heroes/aurora_3

attribute @s max_health base set 16

experience add @s -10 levels

return 1