##
 # search_spot.mcfunction
 # 
 #
 # Created by .
##




#positioned 0 1000 0
execute unless entity @p[distance=..5] run return run function lzenl:loading_start/summon_loading
execute positioned ~ ~ ~5 run function lzenl:loading_start/search_spot