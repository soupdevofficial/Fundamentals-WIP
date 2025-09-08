##
 # 2.mcfunction
 # 
 #
 # Created by .
##
execute unless entity @s[level=15..] run return fail


advancement grant @s[advancements={lzenl:game/heroes/aurora_4=false}] until lzenl:game/heroes/aurora_4


recipe give @s lzenl:f_mc/pathfinder_compass

return 1