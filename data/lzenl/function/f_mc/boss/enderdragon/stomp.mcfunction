##
 # stomp.mcfunction
 # 
 #
 # Created by .
##

particle explosion_emitter ~ ~-4 ~ 1 1 1 1 3
summon creeper ~ ~-2 ~ {powered:1b,ExplosionRadius:-5b,Fuse:0,ignited:1b,attributes:[{id:"minecraft:scale",base:0}]}
summon creeper ~ ~-2 ~ {powered:1b,ExplosionRadius:-5b,Fuse:0,ignited:1b,attributes:[{id:"minecraft:scale",base:0}]}
summon creeper ~ ~-2 ~ {powered:1b,ExplosionRadius:-5b,Fuse:0,ignited:1b,attributes:[{id:"minecraft:scale",base:0}]}
scoreboard players set #smoke animation 60
function lzenl:f_mc/boss/enderdragon/area_smoke
particle dust_pillar{block_state:"end_stone"} ~ ~-2 ~ 5 0 5 0.1 100 force @a[distance=..50]
playsound minecraft:entity.generic.explode block @a ~ ~ ~ 10 1