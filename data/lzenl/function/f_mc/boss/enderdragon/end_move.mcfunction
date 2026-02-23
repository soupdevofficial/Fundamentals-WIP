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

execute as @e[tag=!fundamentals.boss.dragon,distance=..10] run damage @s 20 mob_attack by @n[tag=fundamentals.boss.dragon_tp,type=armor_stand,distance=..10]
execute as @e[tag=!fundamentals.boss.dragon,distance=..15] run damage @s 3 mob_attack by @n[tag=fundamentals.boss.dragon_tp,type=armor_stand,distance=..10]

tp @s ~ ~0.25 ~
execute if score @s died matches 13 run summon slime ~ ~100 ~ {NoGravity:1b,Silent:1b,DeathLootTable:"minecraft:empty",NoAI:1b,Health:999f,Size:0,Tags:["fundamentals.boss","fundamentals.boss.dragon_hp","fundamentals.boss.dragon","abyssal","light","magic"],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b},{id:"minecraft:resistance",amplifier:2,duration:-1,show_particles:0b},{id:"minecraft:fire_resistance",amplifier:1,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:armor",base:30},{id:"minecraft:explosion_knockback_resistance",base:99},{id:"minecraft:knockback_resistance",base:99},{id:"minecraft:armor_toughness",base:40},{id:"minecraft:max_health",base:999},{id:"minecraft:scale",base:9}]}
execute if score @s died matches 14 positioned ~ ~100 ~ positioned ^ ^ ^-3 run tp @e[tag=fundamentals.boss.dragon,type=slime,limit=1,distance=..200] ~ ~-100 ~ ~ ~
execute as @e[distance=..200,type=enderman] run damage @s 1 mob_attack by @n[type=slime,tag=fundamentals.boss.dragon,distance=..240] from @n[type=slime,tag=fundamentals.boss.dragon,distance=..240]
