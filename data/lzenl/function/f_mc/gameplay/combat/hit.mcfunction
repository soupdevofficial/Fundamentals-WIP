##
 # run_as_entity.mcfunction
 # 
 #
 # Created by .
##
function lzenl:f_mc/gameplay/combat/armor/check
execute as @s[tag=dragon] at @s run function lzenl:f_mc/boss/enderdragon/hurt
data remove entity @s last_hurt_by_mob
