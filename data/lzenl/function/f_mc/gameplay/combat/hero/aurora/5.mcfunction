##
 # 2.mcfunction
 # 
 #
 # Created by .
##
execute unless entity @s[level=25..] run return fail


advancement grant @s[advancements={lzenl:game/heroes/aurora_6=false}] until lzenl:game/heroes/aurora_6

recipe give @s lzenl:f_mc/pathfinder_recovery_compass


return 1