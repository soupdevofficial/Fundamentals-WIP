##
 # run_as_entity.mcfunction
 # 
 #
 # Created by .
##
tag @s remove delayed_hit



$execute as @e[nbt={last_hurt_by_mob:$(UUID)}] run function lzenl:f_mc/gameplay/combat/hit
