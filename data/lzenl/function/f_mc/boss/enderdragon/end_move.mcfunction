##
 # end_move.mcfunction
 # 
 #
 # Created by .
##



scoreboard players add @s died 1

playsound entity.generic.explode block @a ~ ~-3 ~ 10 0.2
particle explosion_emitter ~ ~-3 ~ 2 0 2 0 2 force @a
particle dust_pillar{block_state:end_stone} ~ ~ ~ 5 0 5 0.1 20 force @a

execute as @e[tag=!dragon,distance=..10] run damage @s 20 mob_attack by @n[tag=dragon_tp,type=armor_stand,distance=..10]
execute as @e[tag=!dragon,distance=..15] run damage @s 3 mob_attack by @n[tag=dragon_tp,type=armor_stand,distance=..10]

tp @s ~ ~0.25 ~


