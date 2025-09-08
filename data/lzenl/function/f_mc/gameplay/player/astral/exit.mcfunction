##
 # exit.mcfunction
 # 
 #
 # Created by .
##
tag @s remove astral
tag @s remove astral_move

attribute @s minecraft:fall_damage_multiplier modifier remove astral
attribute @s gravity modifier remove astral
attribute @s gravity modifier remove astral_move
attribute @s minecraft:attack_damage modifier remove astral
attribute @s scale modifier remove astral
effect clear @s glowing
effect clear @s invisibility


playsound entity.illusioner.mirror_move player @a ~ ~ ~ 3 1


execute at @s as @n[tag=astral_body,type=block_display,distance=..100] run function lzenl:f_mc/gameplay/player/astral/astral_b_del

return fail

