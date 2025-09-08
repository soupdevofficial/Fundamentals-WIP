##
 # apply_ouchy.mcfunction
 # 
 #
 # Created by .
##
$attribute @s max_health base set $(hp_original)
effect give @s minecraft:instant_health 3 255 true

tag @s remove ouchy