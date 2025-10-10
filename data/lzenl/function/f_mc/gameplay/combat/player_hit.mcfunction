##
 # player_hit.mcfunction
 # 
 #
 # Created by .
##
advancement revoke @s only lzenl:f_mc/check/hit_by_entity
tag @s add pl_hit
schedule function lzenl:f_mc/delayed_conditional 1t