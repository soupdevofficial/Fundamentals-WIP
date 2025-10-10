##
 # hurt.mcfunction
 # 
 #
 # Created by .
##
playsound minecraft:entity.ender_dragon.hurt hostile @a[distance=..100] ~ ~ ~ 1 0.75

bossbar set enderdragon:hp color white


execute store result bossbar enderdragon:hp value run data get entity @s Health











 scoreboard players operation #dmg_original .data /= #-1000 .data
tag @a remove target
execute on attacker run scoreboard players operation @s dragon_dmg += #dmg_original .data
execute as @a if score @s dragon_dmg > #highest dragon_dmg run scoreboard players operation #highest dragon_dmg = @s dragon_dmg
execute as @a if score @s dragon_dmg = #highest dragon_dmg run tag @s add target



schedule function lzenl:f_mc/boss/enderdragon/bossbar_color_back 5t