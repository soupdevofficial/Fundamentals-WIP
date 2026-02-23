##
 # stomp.mcfunction
 # 
 #
 # Created by .
##
execute at @s as @e[type=!#not_mob,distance=..10] at @s run tp @s ~ ~2 ~
particle explosion_emitter ~ ~-4 ~ 1 1 1 1 3

scoreboard players set #smoke animation 60
function lzenl:f_mc/boss/enderdragon/area_smoke
particle dust_pillar{block_state:"end_stone"} ~ ~-2 ~ 5 0 5 0.1 100 force @a[distance=..50]
playsound minecraft:entity.generic.explode block @a ~ ~ ~ 10 1
execute as @e[distance=..20,tag=!fundamentals.boss.dragon,type=!#not_mob] run damage @s 25 minecraft:mace_smash by @n[type=slime,tag=fundamentals.boss.dragon_hp,distance=..18] from @n[type=minecraft:slime,tag=fundamentals.boss.dragon_hp,distance=..15] 



