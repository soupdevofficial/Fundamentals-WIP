##
 # music.mcfunction
 # 
 #
 # Created by .
##

execute if score @s nbs_allsoulsho matches 1.. unless entity @e[tag=dragon,distance=..200] run function lzenl:music/all_souls_hollow/pause
execute unless score @s nbs_allsoulsho matches 1.. if entity @e[tag=dragon,distance=..200] run function lzenl:music/all_souls_hollow/play
execute if score @s[tag=!nbs_allsoulsho] nbs_allsoulsho matches 1.. if entity @e[tag=dragon,distance=..200] run tag @s add nbs_allsoulsho














execute as @s[tag=nbs_allsoulsho] run scoreboard players operation @s nbs_allsoulsho += #music.speed.slow .data
execute as @s[tag=nbs_allsoulsho] at @s run function lzenl:music/all_souls_hollow/tree/0_255

execute as @s[tag=nbs_bgmstrs] run scoreboard players operation @s nbs_bgmstrs += #music.speed.slow .data
execute as @s[tag=nbs_bgmstrs] at @s run function lzenl:music/bg_mstrs/tree/0_255






