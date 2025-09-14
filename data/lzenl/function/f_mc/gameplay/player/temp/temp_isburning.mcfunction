##
 # temp_isburning.mcfunction
 # 
 #
 # Created by .
##
$bossbar set temp:$(id) name {"text":"-[ BURNING ]-","color":"red","bold":false,"italic":false}
$bossbar set temp:$(id) color red
$bossbar set temp:$(id) style notched_20




scoreboard players set #fireprot .data 0


execute if predicate { "condition": "minecraft:entity_properties", "entity": "this", "predicate": { "slots": { "armor.body": { "predicates": { "minecraft:enchantments": [ { "enchantments": "minecraft:fire_protection", "levels": { "min": 1 } } ] } } } } } run scoreboard players add #fireprot .data 1
execute if predicate { "condition": "minecraft:entity_properties", "entity": "this", "predicate": { "slots": { "armor.head": { "predicates": { "minecraft:enchantments": [ { "enchantments": "minecraft:fire_protection", "levels": { "min": 1 } } ] } } } } } run scoreboard players add #fireprot .data 1
execute if predicate { "condition": "minecraft:entity_properties", "entity": "this", "predicate": { "slots": { "armor.feet": { "predicates": { "minecraft:enchantments": [ { "enchantments": "minecraft:fire_protection", "levels": { "min": 1 } } ] } } } } } run scoreboard players add #fireprot .data 1
execute if predicate { "condition": "minecraft:entity_properties", "entity": "this", "predicate": { "slots": { "armor.legs": { "predicates": { "minecraft:enchantments": [ { "enchantments": "minecraft:fire_protection", "levels": { "min": 1 } } ] } } } } } run scoreboard players add #fireprot .data 1



particle flame ~ ~1 ~ 0.2 0.35 0.2 0.1 6




execute if score #fireprot .data matches 3 run return fail
execute if score #fireprot .data matches 2 run return run damage @s 2 on_fire
execute if score #fireprot .data matches 1 run return run damage @s 4 on_fire
damage @s 5 on_fire
