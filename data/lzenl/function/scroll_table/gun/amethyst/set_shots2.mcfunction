##
 # set_shots.mcfunction
 # 
 #
 # Created by .
##





$execute if score #shots .data matches 0 run return run item modify entity @s weapon.offhand [ { "function": "minecraft:set_lore", "lore": [ { "text": "Ammo: [ $(shots) / 32 ]", "color": "#A680FF", "italic": false } ], "mode": "replace_all" }, { "function": "minecraft:set_custom_data", "tag": { "return":true,"spell":{"gun":{"shots":$(shots),"type":1b}},"weapon":{"element":2b} }, "conditions": [] },{ "function": "minecraft:set_components", "components": { "minecraft:use_cooldown": { "seconds": 10, "cooldown_group": "gun_o" } } }]


$item modify entity @s weapon.offhand [ { "function": "minecraft:set_lore", "lore": [ { "text": "Ammo: [ $(shots) / 32 ]", "color": "#A680FF", "italic": false } ], "mode": "replace_all" }, { "function": "minecraft:set_custom_data", "tag": { "return":true,"spell":{"gun":{"shots":$(shots),"type":1b}},"weapon":{"element":2b} }, "conditions": [] },{ "function": "minecraft:set_components", "components": { "minecraft:use_cooldown": { "seconds": 0.25, "cooldown_group": "gun_o" } } }]





















