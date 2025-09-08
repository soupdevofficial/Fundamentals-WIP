##
 # place_ray.mcfunction
 # 
 #
 # Created by .
##

advancement revoke @s only lzenl:f_mc/used_items/bloomery_dry
execute positioned ~ ~1.62 ~ run function lzenl:f_mc/used_items/bloomery_dry/raycast
