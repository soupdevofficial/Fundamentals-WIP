advancement revoke @s only lzenl:crafting
execute if block ~ ~1 ~ water run return run title @s actionbar {text:"water too deep to sit in!",color:red}
execute unless block ~ ~1 ~ #replaceable run return fail
execute unless block ~ ~ ~ #replaceable run return fail
execute if block ~ ~-1 ~ #replaceable run return fail
execute as @s[tag=ui_open] run return fail


execute at @s positioned ~ ~-3 ~ positioned ^ ^ ^3 unless entity @s[distance=..0.1] run return fail



tag @s add ui_open
attribute @s minecraft:movement_speed modifier add ui_open -1 add_multiplied_total
attribute @s minecraft:jump_strength modifier add ui_open -1 add_multiplied_total

summon donkey ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"",Health:20f,Tame:1b,ChestedHorse:1b,Tags:["crafting_ui"],CustomName:"Hand Crafting",equipment:{saddle:{id:"minecraft:wheat_seeds",count:1,components:{"minecraft:item_model":"minecraft:barrier","minecraft:item_name":"Stand Up"}}},active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:armor",base:999},{id:"minecraft:burning_time",base:0},{id:"minecraft:fall_damage_multiplier",base:0},{id:"minecraft:jump_strength",base:0},{id:"minecraft:max_health",base:20},{id:"minecraft:movement_efficiency",base:0},{id:"minecraft:movement_speed",base:0},{id:"minecraft:water_movement_efficiency",base:0},{id:"minecraft:safe_fall_distance",base:2.5},{id:"minecraft:scale",base:0.1},{id:"minecraft:step_height",base:0.1},{id:"minecraft:gravity",base:10}]}

execute as @n[type=donkey,tag=crafting_ui,distance=..1] run function lzenl:uic/donkey

advancement grant @s only lzenl:game/1_sit

rotate @s ~ 0
tag @n[tag=crafting_ui] add ui_open