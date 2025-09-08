##
 # tick.mcfunction
 # 
 #
 # Created by .
##
particle flame ~ ~0.1 ~ 0.1 0.2 0.1 0.001 10

execute as @e[distance=0.1..0.5] run damage @s 1 in_fire at ~ ~ ~

playsound block.campfire.crackle block @a ~ ~ ~ 0.5 1

rotate @s ~ 0

particle campfire_cosy_smoke ~ ~0.5 ~ ^ ^100000 ^ 0.000001 0 force @a


execute unless block ~ ~0.5 ~ light run tag @s remove lit