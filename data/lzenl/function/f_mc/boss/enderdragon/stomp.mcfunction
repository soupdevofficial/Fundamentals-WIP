##
 # stomp.mcfunction
 # 
 #
 # Created by .
##
execute at @s as @e[type=!#not_mob,distance=..10] at @s run tp @s ~ ~2 ~
particle explosion_emitter ~ ~-4 ~ 1 1 1 1 3
summon creeper ~ ~-2 ~ {powered:1b,ExplosionRadius:-5b,Fuse:0,ignited:1b,attributes:[{id:"minecraft:scale",base:0}],Tags:["dragon"]}
summon creeper ~ ~-2 ~ {powered:1b,ExplosionRadius:-5b,Fuse:0,ignited:1b,attributes:[{id:"minecraft:scale",base:0}],Tags:["dragon"]}
summon creeper ~ ~-2 ~ {powered:1b,ExplosionRadius:-5b,Fuse:0,ignited:1b,attributes:[{id:"minecraft:scale",base:0}],Tags:["dragon"]}
scoreboard players set #smoke animation 60
function lzenl:f_mc/boss/enderdragon/area_smoke
particle dust_pillar{block_state:"end_stone"} ~ ~-2 ~ 5 0 5 0.1 100 force @a[distance=..50]
playsound minecraft:entity.generic.explode block @a ~ ~ ~ 10 1
execute as @e[distance=..20,tag=!dragon,type=!block_display] run damage @s 25 minecraft:mace_smash by @n[type=slime,tag=dragon_hp,distance=..18] from @n[type=minecraft:block_display,tag=dragon_root,distance=..15] 



