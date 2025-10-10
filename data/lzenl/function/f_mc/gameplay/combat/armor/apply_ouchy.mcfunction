##
 # apply_ouchy.mcfunction
 # 
 #
 # Created by .
##

effect clear @s instant_health
tag @s remove ouchy
$attribute @s max_health base set $(hp_original)
