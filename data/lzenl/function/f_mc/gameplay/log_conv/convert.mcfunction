##
 # convert.mcfunction
 # 
 #
 # Created by .
##


tag @s remove used_pebble


tag @s add user

execute at @s as @n[type=item,nbt={Age:0s}] if function lzenl:f_mc/gameplay/plank_conv/check_plank at @s run function lzenl:f_mc/gameplay/plank_conv/valid_conv


execute at @s as @n[type=item,nbt={Age:0s}] if function lzenl:f_mc/gameplay/log_conv/check_log at @s run function lzenl:f_mc/gameplay/log_conv/valid_conv




tag @s remove user


