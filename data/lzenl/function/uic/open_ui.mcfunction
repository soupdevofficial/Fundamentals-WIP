


execute as @s[tag=ui_open] run return run function lzenl:uic/check_ui

execute unless predicate lzenl:holding_a_d if score @s .increment_1 matches 5.. run return run function lzenl:uic/cancelled

execute if predicate lzenl:holding_a_d run scoreboard players add @s .increment_1 1


execute if score @s .increment_1 matches 5.. run function lzenl:uic/open_load


execute unless score @s .increment_1 matches 30.. run return fail

scoreboard players reset @s .increment_1

execute if block ~ ~1 ~ water run return run return run title @s actionbar {text:"water too deep to sit in!",color:red}
execute unless block ~ ~1 ~ #replaceable run return run function lzenl:uic/cancelled
execute unless block ~ ~ ~ #replaceable run return run function lzenl:uic/cancelled
#execute if block ~ ~-1 ~ #replaceable run return run function lzenl:uic/cancelled
execute as @s[tag=ui_open] run return fail

tag @s add ui_open
attribute @s minecraft:movement_speed modifier add ui_open -1 add_multiplied_total
attribute @s minecraft:jump_strength modifier add ui_open -1 add_multiplied_total

summon donkey ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"",Health:20f,Tame:1b,ChestedHorse:1b,Tags:["crafting_ui"],CustomName:"Hand Crafting",equipment:{saddle:{id:"minecraft:wheat_seeds",count:1,components:{"minecraft:item_model":"minecraft:barrier","minecraft:item_name":"Stand Up"}}},active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:armor",base:999},{id:"minecraft:burning_time",base:0},{id:"minecraft:fall_damage_multiplier",base:5},{id:"minecraft:jump_strength",base:0},{id:"minecraft:max_health",base:20},{id:"minecraft:movement_efficiency",base:0},{id:"minecraft:movement_speed",base:0},{id:"minecraft:water_movement_efficiency",base:0},{id:"minecraft:safe_fall_distance",base:2.5},{id:"minecraft:scale",base:0.1},{id:"minecraft:step_height",base:0.1}]}



execute as @n[type=donkey,tag=crafting_ui,distance=..1] run function lzenl:uic/donkey

advancement grant @s only lzenl:game/1_sit

rotate @s ~ 0
tag @n[tag=crafting_ui] add ui_open