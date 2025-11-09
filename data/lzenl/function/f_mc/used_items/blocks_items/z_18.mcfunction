##
 # recall_compass.mcfunction
 # 
 #
 # Created by .
##



scoreboard players set #used .data 0



execute store result score #currentvalue .data run data get entity @s SelectedItem.components.minecraft:damage
execute if score #currentvalue .data matches 0 run return run title @s actionbar {color:red,text:"Drill is already Full!"}


execute store result score #return .data run clear @s #coals 1
execute if score #return .data matches 0 run return run title @s actionbar {color:red,text:"No Coal in Inventory!"}

execute if items entity @s weapon.mainhand poisonous_potato[custom_data~{item:{drill:1b}}] run item modify entity @s weapon.mainhand [ { "function": "minecraft:set_damage", "damage": 0.015625, "add": true }, { "function": "minecraft:set_components", "components": { "minecraft:tool": { "rules": [  { "blocks": "#minecraft:incorrect_for_wooden_tool", "speed": 0.00001, "correct_for_drops": false },{ "blocks": "#minecraft:mineable/pickaxe", "speed": 222, "correct_for_drops": true } ], "default_mining_speed": 0.000001, "damage_per_block": 1 } }, "conditions": [] } ]
execute if items entity @s weapon.mainhand poisonous_potato[custom_data~{item:{drill:2b}}] run item modify entity @s weapon.mainhand [ { "function": "minecraft:set_damage", "damage": 0.015625, "add": true }, { "function": "minecraft:set_components", "components": { "minecraft:tool": { "rules": [ { "blocks": "#minecraft:incorrect_for_copper_tool", "speed": 0.00001, "correct_for_drops": false } ,{ "blocks": "#minecraft:mineable/pickaxe", "speed": 222, "correct_for_drops": true }], "default_mining_speed": 0.000001, "damage_per_block": 1 } }, "conditions": [] } ]
execute if items entity @s weapon.mainhand poisonous_potato[custom_data~{item:{drill:3b}}] run item modify entity @s weapon.mainhand [ { "function": "minecraft:set_damage", "damage": 0.015625, "add": true }, { "function": "minecraft:set_components", "components": { "minecraft:tool": { "rules": [ { "blocks": "#minecraft:incorrect_for_iron_tool", "speed": 0.00001, "correct_for_drops": false },{ "blocks": "#minecraft:mineable/pickaxe", "speed": 222, "correct_for_drops": true } ], "default_mining_speed": 0.000001, "damage_per_block": 1 } }, "conditions": [] } ]
execute if items entity @s weapon.mainhand poisonous_potato[custom_data~{item:{drill:4b}}] run item modify entity @s weapon.mainhand [ { "function": "minecraft:set_damage", "damage": 0.015625, "add": true }, { "function": "minecraft:set_components", "components": { "minecraft:tool": { "rules": [ { "blocks": "#minecraft:mineable/pickaxe", "speed": 1200, "correct_for_drops": true } ], "default_mining_speed": 0.1, "damage_per_block": 1 } }, "conditions": [] } ]












