##
 # move_up.mcfunction
 # 
 #
 # Created by .
##

advancement revoke @s only lzenl:astral/up
execute as @s[tag=!astral] run return fail

attribute @s gravity modifier remove astral_move
attribute @s gravity modifier remove astral
attribute @s gravity modifier add astral_move -0.1 add_value



tag @s add astral_move

schedule function lzenl:f_mc/delayed_conditional 2t